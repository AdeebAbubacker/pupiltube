// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puppil/UI/Widget/homeappbar.dart';
import 'package:puppil/core/constant/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeAppBar(),
        SizedBox(height: 50),
        Text(
          "Assesment Dashboard",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Text(
          "Search Bar",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Text(
          "Filter and sorting",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Text(
          "My Assesments",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        SizedBox(height: 10),
        Text(
          "Recent activties",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Text(
          "Create New Assessment Button",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Text(
          "View Sample Assesment by yoyr collegaues",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        SizedBox(height: 10),
        Text(
          "Courses",
          style: TextStyles.rubik16grey367,
        ),
        Text(
          "Anandu Sir ",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Text(
          "Aswathy Mam ",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Text(
          "Aksh Sir ",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Text(
          "Hema Mam ",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 10),
        Wrap(
          children: [
            Text("Your Cowekers in circle avatr"),
            Text(
              "Anandu Sir ",
              style: TextStyles.rubik16grey367,
            ),
            Text(
              "Aswathy Mam ",
              style: TextStyles.rubik16grey367,
            ),
            Text(
              "Aksh Sir ",
              style: TextStyles.rubik16grey367,
            ),
            Text(
              "Hema Mam ",
              style: TextStyles.rubik16grey367,
            ),
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
