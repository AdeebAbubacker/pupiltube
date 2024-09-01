// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';

class QuestionBankManagementScreen extends StatelessWidget {
  const QuestionBankManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          "Question Management",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Image.asset(
              'assets/animated/maths.gif',
            )),
        SizedBox(height: 10),
        Text(
          "Question Bank",
          style: TextStyles.rubik16grey367,
        ),
        ElevatedButton(
            onPressed: () {
              AppRouteService.navigateToquestionBankIntro(context);
            },
            child: Text("Create Question Bank")),
        Text("Search Bar"),
        SizedBox(height: 10),
        SizedBox(height: 10),
        Text("My Question Bank"),
        SizedBox(height: 10),
        Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 197, 245, 251),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Center(
              child: Text(" Question Bank 1  [Edit Button] [Delete Button"),
            )),
        SizedBox(height: 10),
        Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 197, 245, 251),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Center(
              child: Text(" Question Bank 2  [Edit Button] [Delete Button"),
            )),
        SizedBox(height: 10),
        Text("Popular Question Banks"),
        SizedBox(height: 10),
        Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 197, 245, 251),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Center(
              child: Text(" Question Bank 1  By Sreekesh"),
            )),
        SizedBox(height: 10),
        Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 197, 245, 251),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Center(
              child: Text(" Question Bank 2  By Aswathy"),
            )),
        SizedBox(height: 10),
      ],
    );
  }
}
