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
    try {
      final submissionQuery = await _firestore
          .collection('studentSubmissions')
          .where('studentId', isEqualTo: studentId)
          .where('assessmentId', isEqualTo: assessmentId)
          .get();

      if (submissionQuery.docs.isNotEmpty) {
        // If submission exists, update it
        final submissionDoc = submissionQuery.docs.first;
        await submissionDoc.reference.update({
          'answers': answers,
          'score': score,
          'status': status,
          'submittedAt': DateTime.now().toUtc().toIso8601String(),
        });
        print('Submission updated');
      } else {
        // If submission doesn't exist, create a new one
        final String submissionId = const Uuid().v4();

        final studentSubmission = {
          "submissionId": submissionId,
          "studentId": studentId,
          "assessmentId":assessmentId,
          "answers": answers,
          "score": score,
          "status": status,
          "submittedAt": DateTime.now().toUtc().toIso8601String()
        };

        await _firestore
            .collection('studentSubmissions')
            .doc(submissionId)
            .set(studentSubmission);
        print('New submission created');
      }
    } catch (e) {
      print('Failed to submit or update submission: $e');
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
