// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:puppil/core/service/student/assesment/assesment_service.dart';
import 'package:puppil/core/service/student/test/test_service.dart';

class CheckmyClass extends StatelessWidget {
  const CheckmyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await AssesmentStudentService().getAssessmentsToDoForUser(
                      uid: "eKhHuGvPsfX5DgtR5wDrKZYjHFD2");
                },
                child: Text("sss"))
          ],
        ),
      ),
    );
  }
}
