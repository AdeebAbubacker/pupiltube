import 'package:cloud_firestore/cloud_firestore.dart';

class SubmissionModel {
  final String? submissionId;
  final String? studentId;
  final String? assessmentId;
  final List<Answer>? answers;
  final num? score;
  final Timestamp? submittedAt;

  SubmissionModel({
    this.submissionId,
    this.studentId,
    this.assessmentId,
    this.answers,
    this.score,
    this.submittedAt,
  });

  // Factory method to create a SubmissionModel from a map
  factory SubmissionModel.fromMap(Map<String, dynamic> map) {
    return SubmissionModel(
      submissionId: map['submissionId'] as String?,
      studentId: map['studentId'] as String?,
      assessmentId: map['assessmentId'] as String?,
      answers: (map['answers'] as List<dynamic>?)
          ?.map((item) => Answer.fromMap(item as Map<String, dynamic>))
          .toList(),
      score: map['score'] as num?,
      submittedAt: map['submittedAt'] as Timestamp?,
    );
  }

  // Method to convert a SubmissionModel to a map
  Map<String, dynamic> toMap() {
    return {
      'submissionId': submissionId,
      'studentId': studentId,
      'assessmentId': assessmentId,
      'answers': answers?.map((item) => item.toMap()).toList(),
      'score': score,
      'submittedAt': submittedAt,
    };
  }
}

class Answer {
  final String? questionId;
  final String? answer;
  final bool? isCorrect;

  Answer({
    this.questionId,
    this.answer,
    this.isCorrect,
  });

  // Factory method to create an Answer from a map
  factory Answer.fromMap(Map<String, dynamic> map) {
    return Answer(
      questionId: map['questionId'] as String?,
      answer: map['answer'] as String?,
      isCorrect: map['isCorrect'] as bool?,
    );
  }

  // Method to convert an Answer to a map
  Map<String, dynamic> toMap() {
    return {
      'questionId': questionId,
      'answer': answer,
      'isCorrect': isCorrect,
    };
  }
}

