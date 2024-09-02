import 'package:flutter/material.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';

class CheckData extends StatelessWidget {
  const CheckData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () async {
              await AssesmentService().fetchAssessmentsForMyClassAsTeacher();
            },
            child: const Text("Call APi"))
      ],
    ));
  }
}
