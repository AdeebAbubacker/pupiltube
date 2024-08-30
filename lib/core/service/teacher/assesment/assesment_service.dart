import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:puppil/core/helper/connection/connectivity_checker.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';
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
              DateTime.now().add(Duration(hours: 1)),
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
}
