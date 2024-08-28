import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:puppil/core/connection/connectivity_checker.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';
import 'package:uuid/uuid.dart';

class QuestionBankService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<Either<int, QuestionBank>> createQuestionBank({
    String? title,
    String? description,
    List<Question>? questions,
    String? teacherId,
  }) async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }
      final String questionBankId = Uuid().v4();

      final questionBank = {
        "questionBankId": questionBankId,
        "title": title,
        "description": description,
        "questions": questions?.map((q) => q.toMap()).toList() ?? [],
        "teacherId":
            teacherId ?? "RA5PL0Na31UYmhdh6WcqkJkpo1k1", // Default if null
        "teacherName": "Ravi",
        "createdAt": DateTime.now(),
      };

      await _firestore
          .collection('questionBanks')
          .doc(questionBankId)
          .set(questionBank);

      // Fetch the newly created document to return the QuestionBank
      final docSnapshot = await _firestore
          .collection('questionBanks')
          .doc(questionBankId)
          .get();
      final data = docSnapshot.data()!;
      final createdQuestionBank = QuestionBank.fromMap(data);
      print('success');
      return Right(createdQuestionBank);
    } catch (e) {
      print('Left ${e.toString()}');
      return const Left(1); // General error
    }
  }

  Future<Either<int, QuestionBank>> updateQuestion({
    required String questionBankId,
    required Map<String, dynamic> newQuestion,
  }) async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }
      final docRef = _firestore.collection('questionBanks').doc(questionBankId);

      // Fetch the current data
      final docSnapshot = await docRef.get();
      if (!docSnapshot.exists) {
        return const Left(3); // Question Bank not found
      }

      final data = docSnapshot.data()!;
      final List<dynamic> questions = data['questions'] ?? [];

      // Add the new question
      questions.add(newQuestion);

      // Update the document with the new list of questions
      await docRef.update({'questions': questions});

      // Fetch the updated document to return the updated QuestionBank
      final updatedDocSnapshot = await docRef.get();
      final updatedData = updatedDocSnapshot.data()!;
      final updatedQuestionBank = QuestionBank.fromMap(updatedData);

      return Right(updatedQuestionBank);
    } catch (e) {
      return const Left(1); // Error updating data
    }
  }

  Future<Either<int, QuestionBank>> fetchQuestionBankById({
    required String questionBankId,
  }) async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      final docSnapshot = await _firestore
          .collection('questionBanks')
          .doc(questionBankId)
          .get();
      if (docSnapshot.exists) {
        final data = docSnapshot.data();
        if (data != null) {
          final questionBank = QuestionBank.fromMap(data);
          return Right(questionBank);
        } else {
          return const Left(2); // Data is null
        }
      } else {
        return const Left(3); // Document not found
      }
    } catch (e) {
      return const Left(1); // Error fetching data
    }
  }

  Future<Either<int, List<QuestionBank>>> featchALlQuestionBank() async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print('left');
        return const Left(0);
      }

      final snapshot = await _firestore.collection('questionBanks').get();

      final assessments =
          snapshot.docs.map((doc) => QuestionBank.fromMap(doc.data())).toList();
      print('Right');
      return Right(assessments);
    } catch (e) {
      print('left');
      return const Left(1);
    }
  }

  Future createClass() async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }
      final String questionBankId = Uuid().v4();

      final questionBank = {
        "classId": questionBankId,
        "className": "Class 6",
        "teachers": ["teacher_1", "teacher_2"],
        "students": ["student_1", "student_2", "student_3"],
        "createdAt": Timestamp.now(),
        "updatedAt": Timestamp.now()
      };

      await _firestore
          .collection('classes')
          .doc(questionBankId)
          .set(questionBank);

       print('sssss');
    } catch (e) {
      print('eerrr ${e.toString()}');
    }
  }
}
