import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:puppil/core/connection/connectivity_checker.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:uuid/uuid.dart';
import 'package:dartz/dartz.dart';

class AssesmentService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<Either<int, AssessmentModel>> createAssessment({
    String? title,
  }) async {
    final String assessmentId = const Uuid().v4();

    final assessment = {
      "assessmentId": assessmentId,
      "title": title,
      "description": "string",
      "teacherId": "RA5PL0Na31UYmhdh6WcqkJkpo1k1",
      "createdAt": Timestamp.now(),
      "questions": [
        {
          "questionId": "string",
          "questionText": "string",
          "options": ["string"],
          "correctAnswer": "string"
        }
      ],
      "questionBankId": "string",
      "gradingOptions": {"type": "string", "passingScore": "number"}
    };

    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      await _firestore
          .collection('assessments')
          .doc(assessmentId)
          .set(assessment);
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

  // Future<Either<dynamic, int>> importFromQuestionBank({
  //   required String assessmentId,
  //   required List<Question> newQuestions,
  // }) async {
  //   try {
  //     final hasInternet = await _connectivityChecker.hasInternetAccess();
  //     if (!hasInternet) {
  //       print('no internet');
  //       return const Left(0);
  //     }

  //     final docRef = _firestore.collection('assessments').doc(assessmentId);

  //     // Convert the new questions to maps and then append each to Firestore using arrayUnion
  //     final updates = <String, dynamic>{};
  //     for (var question in newQuestions) {
  //       updates['questions'] = FieldValue.arrayUnion([question.toMap()]);
  //     }

  //     // Update the document with the new questions
  //     await docRef.update(updates);

  //     print('Success');
  //     return right(200); // Success
  //   } catch (e) {
  //     print('Error occurred ${e.toString()}');
  //     return left('error'); // Error occurred
  //   }
  // }

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
}
