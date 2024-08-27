
import 'package:cloud_firestore/cloud_firestore.dart';

class AssessmentModel {
  final String? assessmentId;
  final String? title;
  final String? description;
  final String? teacherId;
  final Timestamp? createdAt;
  final List<Question>? questions;
  final String? questionBankId;
final GradingOptions? gradingOptions;

  AssessmentModel({
    this.assessmentId,
    this.title,
    this.description,
    this.teacherId,
     this.createdAt,
    this.questions,
    this.questionBankId,
    this.gradingOptions,
  });

  factory AssessmentModel.fromMap(Map<String, dynamic> map) {
    return AssessmentModel(
      assessmentId: map['assessmentId'] as String?,
      title: map['title'] as String?,
      description: map['description'] as String?,
      teacherId: map['teacherId'] as String?,
      createdAt: map['createdAt'] as Timestamp?,
      questions: (map['questions'] as List<dynamic>?)
          ?.map((item) => Question.fromMap(item as Map<String, dynamic>))
          .toList(),
      questionBankId: map['questionBankId'] as String?,
      gradingOptions: map['gradingOptions'] != null
          ? GradingOptions.fromMap(
              map['gradingOptions'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'assessmentId': assessmentId,
      'title': title,
      'description': description,
      'teacherId': teacherId,
       'createdAt': createdAt,
      'questions': questions?.map((item) => item.toMap()).toList(),
      'questionBankId': questionBankId,
      'gradingOptions': gradingOptions?.toMap(),
    };
  }
}

class Question {
  final String? questionId;
  final String? questionText;
  final List<String>? options;
  final String? correctAnswer;

  Question({
    this.questionId,
    this.questionText,
    this.options,
    this.correctAnswer,
  });

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      questionId: map['questionId'] as String?,
      questionText: map['questionText'] as String?,
      options: (map['options'] as List<dynamic>?)
          ?.map((item) => item as String)
          .toList(),
      correctAnswer: map['correctAnswer'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'questionId': questionId,
      'questionText': questionText,
      'options': options,
      'correctAnswer': correctAnswer,
    };
  }
}

class GradingOptions {
  final String? type;
  final String? passingScore;

  GradingOptions({
    this.type,
    this.passingScore,
  });

  factory GradingOptions.fromMap(Map<String, dynamic> map) {
    return GradingOptions(
      type: map['type'] as String?,
      passingScore: map['passingScore'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'passingScore': passingScore,
    };
  }
}
