import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:puppil/core/helper/connection/connectivity_checker.dart';
import 'package:puppil/core/models/events/event_models.dart';

class EventsService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<Either<String, List<EventModel>>> getEventsForStudnet() async {
    try {
      // Check for internet connectivity
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print("No internet");
        return const Left('No internet connection');
      }

      // Step 1: Check if the user is part of any class
      QuerySnapshot classesSnapshot = await _db.collection('events').get();

      // Convert each document to EventModel
      List<EventModel> events = classesSnapshot.docs.map((doc) {
        return EventModel.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
      print(events[0].eventId);
      return Right(events);
    } catch (e) {
      print('Error: ${e.toString()}');
      return Left('Failed to check assessments: ${e.toString()}');
    }
  }
}
