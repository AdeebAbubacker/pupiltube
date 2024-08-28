// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:puppil/core/connection/connectivity_checker.dart';
// import 'package:puppil/core/models/submission/submission_model.dart';
// import 'package:uuid/uuid.dart';

// class StudentSubmissionService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

//   Future<void> studentSubmission() async {
//     final String notificationId = const Uuid().v4();

//     final studentSubmission = {
//       "submissionId": notificationId,
//       "studentId": "KBxPbAbXwVdGb00YU3tOAJrM3Py2",
//       "assessmentId": "2dae8f20-3254-40ab-9624-70779d3b5947",
//       "answers": [
//         {
//           "questionId": "6a523cea-4138-4459-9fda-bb9c6267fed9",
//           "answer": "Jupiter",
//           "isCorrect": true
//         },
//         {
//           "questionId": "b863c872-11c0-4e99-8b93-ece6fb56e5fa",
//           "answer": "Giraffe",
//           "isCorrect": true
//         },
//         {
//           "questionId": "7624e9ec-d27e-4223-b8e3-d740c741e5a9",
//           "answer": "Sun",
//           "isCorrect": true
//         },
//         {
//           "questionId": "173cf298-8683-42a8-a317-20ab3c9572bc",
//           "answer": "New Delhi",
//           "isCorrect": true
//         },
//         {
//           "questionId": "f9a16310-e4e2-4728-b5bf-d25bd23a84aa",
//           "answer": "Strawberry",
//           "isCorrect": true
//         },
//         {
//           "questionId": "08d03157-cbc4-424f-a332-880e5f86ac99",
//           "answer": "Photosynthesis",
//           "isCorrect": true
//         },
//         {
//           "questionId": "fffff4ac-6895-41c4-bc12-e1e50342f875",
//           "answer": "J.K. Rowling",
//           "isCorrect": true
//         },
//         {
//           "questionId": "578225bf-a4a9-4551-a455-ec098220b5ff",
//           "answer": "366",
//           "isCorrect": true
//         },
//         {
//           "questionId": "3059ba0a-1ea6-4367-bbd4-832e13086a75",
//           "answer": "Earth",
//           "isCorrect": true
//         },
//         {
//           "questionId": "580b7eee-2933-4d1d-9534-568589954fd7",
//           "answer": "Cell",
//           "isCorrect": true
//         }
//       ],
//       "score": 10,
//       "status": "incomplete ", //todo , completed
//       "submittedAt": "2024-08-28T06:52:59Z"
//     };

//     try {
//       await _firestore
//           .collection('studentSubmissions')
//           .doc(notificationId)
//           .set(studentSubmission);
//       print(studentSubmission);
//     } catch (e) {
//       print('Failed to create notification: $e');
//     }
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class StudentSubmissionService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> submitStudentSubmission({
    required String studentId,
    required String assessmentId,
    required List<Map<String, dynamic>> answers,
    required int score,
    required String status,
  }) async {
    final String notificationId = const Uuid().v4();

    final studentSubmission = {
      "submissionId": notificationId,
      "studentId": studentId,
      "assessmentId": "2dae8f20-3254-40ab-9624-70779d3b5947",
      "answers": answers,
      "score": score,
      "status": status,
      "submittedAt": DateTime.now().toUtc().toIso8601String()
    };

    try {
      await _firestore
          .collection('studentSubmissions')
          .doc(notificationId)
          .set(studentSubmission);
      print(studentSubmission);
    } catch (e) {
      print('Failed to create notification: $e');
    }
  }

  Future<void> updateOrCreateAnswer({
    required String studentId,
    required String assessmentId,
    required String questionId,
    required String answer,
    required int score,
    required bool isCorrect,
  }) async {
    try {
      final submissionQuery = await _firestore
          .collection('studentSubmissions')
          .where('studentId', isEqualTo: studentId)
          .where('assessmentId', isEqualTo: assessmentId)
          .get();

      if (submissionQuery.docs.isNotEmpty) {
        final submissionDoc = submissionQuery.docs.first;
        final existingData = submissionDoc.data();
        final answers =
            List<Map<String, dynamic>>.from(existingData['answers'] ?? []);

        final answerIndex =
            answers.indexWhere((item) => item['questionId'] == questionId);
        if (answerIndex != -1) {
          // Update existing answer
          answers[answerIndex] = {
            'questionId': questionId,
            'answer': answer,
            'isCorrect': isCorrect,
          };
        } else {
          // Add new answer
          answers.add({
            'questionId': questionId,
            'answer': answer,
            'isCorrect': isCorrect,
          });
        }

        await submissionDoc.reference.update({
          'answers': answers,
          'score': score,
        });
        print('Answer updated: $answer');
      } else {
        // Create a new submission if none exists
        await submitStudentSubmission(
          studentId: studentId,
          assessmentId: assessmentId,
          answers: [
            {
              'questionId': questionId,
              'answer': answer,
              'isCorrect': isCorrect,
            }
          ],
          score: 0,
          status: 'in_progress',
        );
        print('New submission created with answer: $answer');
      }
    } catch (e) {
      print('Failed to update or create answer: $e');
    }
  }
}
