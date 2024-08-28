import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';

class AssessmentModel {
  final String? assessmentId;
  final String? title;
  final String? description;
  final String? classId;
  final String? subject;
  final String? teacherId;
  final Timestamp? createdAt;
  final List<Question>? questions;
  final String? questionBankId;
  final GradingOptions? gradingOptions;
  final TimeSlot? timeSlot;
  final String? status;

  AssessmentModel({
    this.assessmentId,
    this.title,
    this.description,
    this.classId,
    this.subject,
    this.teacherId,
    this.createdAt,
    this.questions,
    this.questionBankId,
    this.gradingOptions,
    this.timeSlot,
    this.status = 'draft',
  });

  factory AssessmentModel.fromMap(Map<String, dynamic> map) {
    return AssessmentModel(
      assessmentId: map['assessmentId'] as String?,
      title: map['title'] as String?,
      description: map['description'] as String?,
      classId: map['classId'] as String?,
      subject: map['subject'] as String?,
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
      timeSlot: map['timeSlot'] != null
          ? TimeSlot.fromMap(map['timeSlot'] as Map<String, dynamic>)
          : null,
      status: map['status'] as String? ?? 'draft',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'assessmentId': assessmentId,
      'title': title,
      'description': description,
      'classId': classId,
      'subject': subject,
      'teacherId': teacherId,
      'createdAt': createdAt,
      'questions': questions?.map((item) => item.toMap()).toList(),
      'questionBankId': questionBankId,
      'gradingOptions': gradingOptions?.toMap(),
      'timeSlot': timeSlot?.toMap(),
      'status': status,
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

class TimeSlot {
  final Timestamp? startTime;
  final Timestamp? endTime;

  TimeSlot({
    this.startTime,
    this.endTime,
  });

  factory TimeSlot.fromMap(Map<String, dynamic> map) {
    return TimeSlot(
      startTime: map['startTime'] as Timestamp?,
      endTime: map['endTime'] as Timestamp?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'startTime': startTime,
      'endTime': endTime,
    };
  }
}
