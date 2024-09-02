import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:puppil/core/helper/connection/connectivity_checker.dart';
import 'package:puppil/core/helper/token/get_uid.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';
import 'package:puppil/core/models/review_model/review_model.dart';
import 'package:puppil/core/models/submission/submission_model.dart';
import 'package:uuid/uuid.dart';
import 'package:dartz/dartz.dart';

class AssesmentService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<Either<int, AssessmentModel>> createAssessment({
    String? title,
    String? description,
    String? classId,
    String? subject,
    String? teacherId,
    List<Question>? questions,
    String? questionBankId,
    GradingOptions? gradingOptions,
    TimeSlot? timeSlot,
  }) async {
    final String assessmentId = const Uuid().v4();

    final assessment = {
      "assessmentId": assessmentId,
      "title": title,
      "description": description ?? "string", // Default value if not provided
      "classId": classId ?? "defaultClassId", // Add default or null checks
      "subject": subject ?? "defaultSubject",
      "teacherId": teacherId ?? "RA5PL0Na31UYmhdh6WcqkJkpo1k1",
      "createdAt": Timestamp.now(),
      "questions": questions?.map((q) => q.toMap()).toList() ??
          [
            {
              "questionId": "defaultQuestionId",
              "question": "defaultQuestion",
              "options": ["defaultOption"],
              "answer": "defaultAnswer"
            }
          ], // Provide default questions if none provided
      "questionBankId": questionBankId ?? "defaultQuestionBankId",
      "gradingOptions": gradingOptions?.toMap() ??
          {
            "type": "defaultType",
            "passingScore": "defaultPassingScore",
          }, // Default grading options
      "timeSlot": timeSlot?.toMap() ??
          {
            "startTime": Timestamp.now(),
            "endTime": Timestamp.fromDate(
              DateTime.now().add(const Duration(hours: 1)),
            ),
          }, // Default time slot
      "status": "draft", // Default status
    };

    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print('hasInternet');
        return const Left(0);
      }

      await _firestore
          .collection('assessments')
          .doc(assessmentId)
          .set(assessment);
      print('assessment notification');
      // Create assessment notification
      try {
        print("broooooooooo");
        await createNotification(
          type: 'assessment_created',
          title: 'New Assessment Created',
          body: 'An assessment titled "$title" has been created.',
          recipientId: "classId!",
          senderId: "teacherId!",
        );
      } catch (e) {
        print("oops ${e.toString()}");
      }

      return Right(AssessmentModel.fromMap(assessment));
    } catch (e) {
      return const Left(1);
    }
  }

  Future<Either<int, List<AssessmentModel>>> fetchAssessments() async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      final snapshot = await _firestore.collection('assessments').get();
      final assessments = snapshot.docs
          .map((doc) => AssessmentModel.fromMap(doc.data()))
          .toList();
      print(assessments[0].assessmentId);
      return Right(assessments);
    } catch (e) {
      return const Left(1);
    }
  }

  Future<Either<int, List<AssessmentModel>>>
      fetchAssessmentsForMyClassAsTeacher() async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }
      String? uid = await getUserUID();

      final snapshot = await _firestore
          .collection('assessments')
          .where('teacherId', isEqualTo: uid)
          .get();
      final assessments = snapshot.docs
          .map((doc) => AssessmentModel.fromMap(doc.data()))
          .toList();
      print(assessments.length);
      return Right(assessments);
    } catch (e) {
      return const Left(1);
    }
  }

  Future<Either<int, List<AssessmentModel>>>
      fetchOngoingAssessmentsAsTeacher() async {
    try {
      // Check for internet connection
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      // Get the current user's ID
      String? uid = await getUserUID();
      if (uid == null) {
        return const Left(1); // Error getting user ID
      }

      // Fetch assessments from Firestore where `teacherId` matches
      final snapshot = await _firestore
          .collection('assessments')
          .where('teacherId',
              isEqualTo:
                  "aqdgObnesTXLhqnCkaAiV8TTusD3") // Update with uid variable if dynamic user is needed
          .get();

      print(
          'Fetched documents count: ${snapshot.docs.length}'); // Print count for debugging
      final now = Timestamp.now();

      // Client-side filtering to check if `endTime` is after the current time
      final ongoingAssessments = snapshot.docs
          .where((doc) {
            final data = doc.data();
            final endTime = (data['timeSlot']?['endTime'])
                as Timestamp?; // Safely accessing nested fields
            if (endTime == null) {
              return false; // If no endTime, consider it invalid
            }
            print('EndTime: $endTime, Now: $now'); // Print for debugging
            return endTime.compareTo(now) > 0; // Filter if endTime is after now
          })
          .map((doc) => AssessmentModel.fromMap(doc.data())) // Map to model
          .toList();

      print(
          'Ongoing assessments count: ${ongoingAssessments.length}'); // Print filtered count
      return Right(ongoingAssessments);
    } catch (e) {
      print(
          'Error fetching assessments: ${e.toString()}'); // Debugging error message
      return const Left(1); // General error
    }
  }

  // Method to get student answers with comparison to correct answers
  Future<Either<int, AssessmentReviewResponse> > getAssessmentReview({
    required String assessmentId,
    required String studentId,
  }) async {
    try {
      // Check for internet connectivity
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      // Fetch the assessment data
      DocumentSnapshot assessmentSnapshot =
          await _firestore.collection('assessments').doc(assessmentId).get();

      if (!assessmentSnapshot.exists) {
        return const Left(1);
      }

      var assessmentData = assessmentSnapshot.data() as Map<String, dynamic>;
      List<dynamic> questions = assessmentData['questions'] ?? [];

      // Fetch the student submission data
      QuerySnapshot submissionSnapshot = await _firestore
          .collection('studentSubmissions')
          .where('assessmentId', isEqualTo: assessmentId)
          .where('studentId', isEqualTo: studentId)
          .get();

      if (submissionSnapshot.docs.isEmpty) {
        return const Left(1);
      }

      var submissionData =
          submissionSnapshot.docs.first.data() as Map<String, dynamic>;
      List<dynamic> studentAnswers = submissionData['answers'] ?? [];

      // Create a list to store the detailed review data
      List<ReviewModel> reviewData = [];
      int totalScore = 0;

      // Iterate over the assessment questions to compare with student's answers
      for (var question in questions) {
        String questionId = question['questionId'] ?? '';
        String questionText = question['question'] ?? '';
        List<dynamic> options = question['options'] ?? [];
        String correctAnswer = question['answer'] ?? '';

        // Find the student's answer for the current question
        var studentAnswer = studentAnswers.firstWhere(
          (answer) => answer['questionId'] == questionId,
          orElse: () => null,
        );

        // Extract the student's selected answer
        String selectedAnswer =
            studentAnswer != null ? studentAnswer['answer'] : 'Not answered';

        // Check if the answer is correct and update the score
        if (selectedAnswer == correctAnswer) {
          totalScore++;
        }

        // Add the question review to the list
        reviewData.add(ReviewModel(
          questionId: questionId,
          question: questionText,
          options: List<String>.from(options),
          correctAnswer: correctAnswer,
          selectedAnswer: selectedAnswer,
        ));
      }

      // Prepare the final response with review data and total score
      final response = AssessmentReviewResponse(
        totalScore: totalScore,
        review: reviewData,
      );
      print(response.totalScore);
      return Right(response);
    } catch (e) {
      return Left(1);
    }
  }

  Future<Either<int, List<AssessmentModel>>> fetchDraftAssessments() async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      String? uid = await getUserUID();
      if (uid == null) {
        return const Left(1); // Error getting user ID
      }

      final snapshot = await _firestore
          .collection('assessments')
          .where('teacherId', isEqualTo: uid)
          .where('status', isEqualTo: "draft")
          .get();

      final assessments = snapshot.docs
          .map((doc) => AssessmentModel.fromMap(doc.data()))
          .toList();

      print('Fetched draft assessments count: ${assessments.length}');
      return Right(assessments);
    } catch (e, stackTrace) {
      print('Error fetching draft assessments: $e');
      print(stackTrace);
      return const Left(1);
    }
  }

  Future<Either<int, AssessmentModel>> fetchAssessmentById(String id) async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      final doc = await _firestore
          .collection('assessments')
          .doc('02f706ea-df08-4034-9d17-99b1177573c6')
          .get();

      if (doc.exists) {
        final assessment = AssessmentModel.fromMap(doc.data()!);
        return Right(assessment);
      } else {
        return const Left(2); // Document does not exist
      }
    } catch (e) {
      return const Left(1); // Other errors
    }
  }

  Future<Either<dynamic, int>> importFromQuestionBank({
    required String assessmentId,
    required List<Question> newQuestions,
  }) async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print('no internet');
        return const Left(0);
      }

      final docRef = _firestore.collection('assessments').doc(assessmentId);

      // Fetch the existing document
      final docSnapshot = await docRef.get();
      if (!docSnapshot.exists) {
        print('Document does not exist');
        return const Left('Document does not exist');
      }

      // Get existing questions from the document
      final existingData = docSnapshot.data();
      final existingQuestions =
          List<Map<String, dynamic>>.from(existingData?['questions'] ?? []);

      // Convert new questions to maps
      final newQuestionMaps = newQuestions.map((q) => q.toMap()).toList();

      // Combine existing and new questions
      final combinedQuestions = [...existingQuestions, ...newQuestionMaps];

      // Update the document with the combined questions
      await docRef.update({
        'questions': combinedQuestions,
      });

      print('Success');
      return right(200); // Success
    } catch (e) {
      print('Error occurred ${e.toString()}');
      return left('error'); // Error occurred
    }
  }

  Future<void> createNotification({
    required String type,
    required String title,
    required String body,
    required String recipientId,
    required String senderId,
  }) async {
    final String notificationId = const Uuid().v4();

    final notification = {
      'notificationId': notificationId,
      'type': type,
      'title': title,
      'body': body,
      'recipientId': recipientId,
      'senderId': senderId,
      'createdAt': Timestamp.now(),
    };
    try {
      await _firestore
          .collection('notifications')
          .doc(notificationId)
          .set(notification);
      print(notification);
    } catch (e) {
      print('Failed to create notification: $e');
    }
  }

  Future<Either<String, List<SubmissionModel>>>
      getListOfSubmissionByAssessmentId({
    required String uid,
  }) async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print("No internet");
        return const Left('No internet connection');
      }
      QuerySnapshot classesSnapshot = await _firestore
          .collection('studentSubmissions')
          .where('assessmentId', isEqualTo: uid)
          .get();

      List<SubmissionModel> submissionList = classesSnapshot.docs.map((doc) {
        return SubmissionModel.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();

      for (var submission in submissionList) {
        DocumentSnapshot userSnapshot = await _firestore
            .collection('Users')
            .doc(submission.studentId)
            .get();

        if (userSnapshot.exists) {
          var userData = userSnapshot.data() as Map<String, dynamic>;
          submission.studentName = userData['name'] ?? 'Unknown';
        } else {
          submission.studentName = 'Unknown';
        }
      }

      return Right(submissionList);
    } catch (e) {
      return Left('Failed to check overdue assessments: ${e.toString()}');
    }
  }

  Future<Either<String, String>> getClassIdFromAssessment({
    required String assessmentId,
  }) async {
    try {
      // Check for internet connectivity
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print("No internet");
        return const Left('No internet connection');
      }

      // Fetch the assessment document using the assessmentId
      DocumentSnapshot assessmentSnapshot =
          await _firestore.collection('assessments').doc(assessmentId).get();

      // Check if the assessment document exists
      if (!assessmentSnapshot.exists) {
        print("Assessment not found");
        return const Left('Assessment not found');
      }

      // Extract classId from the assessment document
      var assessmentData = assessmentSnapshot.data() as Map<String, dynamic>;
      String? classId = assessmentData['classId'];

      // Check if classId is present in the assessment document
      if (classId == null) {
        print("Class ID not found in assessment");
        return const Left('Class ID not found in assessment');
      }

      print('Class ID: $classId');
      return Right(classId);
    } catch (e) {
      print('Error: ${e.toString()}');
      return Left('Failed to fetch class ID: ${e.toString()}');
    }
  }
}
