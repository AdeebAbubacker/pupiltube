import 'package:cloud_firestore/cloud_firestore.dart';

class CoursesModel {
  final String? classId;
  final String? title;
  final List<Data>? data;
  final Timestamp? updatedAt;

  CoursesModel({
    this.classId,
    this.title,
    this.updatedAt,
    this.data,
  });

  factory CoursesModel.fromMap(Map<String, dynamic> map) {
    return CoursesModel(
      classId: map['classId'] as String?,
      title: map['title'] as String?,
      data: (map['data'] as List<dynamic>?)
          ?.map((item) => Data.fromMap(item as Map<String, dynamic>))
          .toList(),
      updatedAt: map['updatedAt'] as Timestamp?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'classId': classId,
      'title': title,
      'data': data?.map((item) => item.toMap()).toList(),
      'updatedAt': updatedAt,
    };
  }
}

class Data {
  final String content;

  final String subtitle;
  final String title;
  final String videoUrlId;

  Data({
    required this.content,
    required this.subtitle,
    required this.title,
    required this.videoUrlId,
  });

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      content:
          map['content'] as String? ?? '', // Default to empty string if null

      subtitle:
          map['subtitle'] as String? ?? '', // Default to empty string if null
      title: map['title'] as String? ?? '', // Default to empty string if null

      videoUrlId:
          map['videoUrlId'] as String? ?? '', // Default to empty string if null
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'subtitle': subtitle,
      'title': title,
      'videoUrlId': videoUrlId,
    };
  }
}
