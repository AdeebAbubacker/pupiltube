import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationModel {
  final String notificationId;
  final String
      type; // E.g., 'assessment_created', 'feedback_received', 'review_added'
  final String title;
  final String body;
  final String recipientId; // ID of the user who will receive the notification
  final String senderId; // ID of the user who triggered the notification
  final Timestamp createdAt;

  NotificationModel({
    required this.notificationId,
    required this.type,
    required this.title,
    required this.body,
    required this.recipientId,
    required this.senderId,
    required this.createdAt,
  });

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      notificationId: map['notificationId'],
      type: map['type'],
      title: map['title'],
      body: map['body'],
      recipientId: map['recipientId'],
      senderId: map['senderId'],
      createdAt: map['createdAt'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'notificationId': notificationId,
      'type': type,
      'title': title,
      'body': body,
      'recipientId': recipientId,
      'senderId': senderId,
      'createdAt': createdAt,
    };
  }
}
