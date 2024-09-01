import 'package:cloud_firestore/cloud_firestore.dart';


class QuestionBank {
  final String questionBankId;
  final String teacherId;
  final String teacherName;
  final List<Question> questions;
  final String description;
  final String title;
  final Timestamp createdAt;

  QuestionBank({
    required this.questionBankId,
    required this.teacherId,
    required this.teacherName,
    required this.questions,
    required this.title,
    required this.description,
    required this.createdAt,
  });

  factory QuestionBank.fromMap(Map<String, dynamic> map) {
    return QuestionBank(
      questionBankId: map['questionBankId'] as String? ??
          '', // Default to empty string if null
      teacherId:
          map['teacherId'] as String? ?? '', // Default to empty string if null

      teacherName: map['teacherName'] as String? ?? '',
      questions: (map['questions'] as List<dynamic>? ?? [])
          .map((q) => Question.fromMap(q as Map<String, dynamic>))
          .toList(),
      title: map['title'] as String? ?? '',
      description: map['description'] as String? ??
          '', // Default to empty string if null
      createdAt: map['createdAt'] as Timestamp? ??
          Timestamp.now(), // Default to current timestamp if null
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'questionBankId': questionBankId,
      'teacherId': teacherId,
      'teacherName': teacherName,
      'questions': questions.map((q) => q.toMap()).toList(),
      'description': description,
      'title': title,
      'createdAt': createdAt,
    };
  }
}

class Question {
  final String questionId;
  final List<String> options;
  final String answer;
  final String question;

  Question({
    required this.questionId,
    required this.options,
    required this.answer,
    required this.question,
  });

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      questionId:
          map['questionId'] as String? ?? '', // Default to empty string if null
      options: List<String>.from(
          map['options'] ?? []), // Default to empty list if null
      answer: map['answer'] as String? ?? '', // Default to empty string if null
      question:
          map['question'] as String? ?? '', // Default to empty string if null
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'questionId': questionId,
      'options': options,
      'answer': answer,
      'question': question,
    };
  }
}
