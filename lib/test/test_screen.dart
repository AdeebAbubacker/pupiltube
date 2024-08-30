import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:puppil/core/service/auth/auth_service.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

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
                  await UpdateMyAssesment().myasssement();
                },
                child: Text("ddd"))
          ],
        ),
      ),
    );
  }
}
