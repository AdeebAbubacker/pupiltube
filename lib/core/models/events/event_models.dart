import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:puppil/core/helper/connection/connectivity_checker.dart';

class EventModel {
  final String eventId;
  final String eventTitle;
  final String description;
  final String eventType;
  final String scheduledDate;
  final String startTime;
  final String endTime;
  final String location;
  final String organizer;

  EventModel({
    required this.eventId,
    required this.eventTitle,
    required this.description,
    required this.eventType,
    required this.scheduledDate,
    required this.startTime,
    required this.endTime,
    required this.location,
    required this.organizer,
  });

  Map<String, dynamic> toMap() {
    return {
      'eventId': eventId,
      'eventTitle': eventTitle,
      'description': description,
      'eventType': eventType,
      'scheduledDate': scheduledDate,
      'startTime': startTime,
      'endTime': endTime,
      'location': location,
      'organizer': organizer,
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      eventId: map['eventId'],
      eventTitle: map['eventTitle'],
      description: map['description'],
      eventType: map['eventType'],
      scheduledDate: map['scheduledDate'] as String,
      startTime: map['startTime'] as String,
      endTime: map['endTime'] as String,
      location: map['location'],
      organizer: map['organizer'],
    );
  }
}
