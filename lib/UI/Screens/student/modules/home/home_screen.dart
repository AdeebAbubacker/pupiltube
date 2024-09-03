// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puppil/UI/Widget/homeappbar.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/models/subject/subject_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<SubjectModel> subjectList = <SubjectModel>[
    SubjectModel(
      image: 'assets/subjects/biology.jpg',
      subjectName: 'Biology',
    ),
    SubjectModel(
      image: 'assets/subjects/chemistry.png',
      subjectName: 'Chemistry',
    ),
    SubjectModel(
      image: 'assets/subjects/english.jpg',
      subjectName: 'English',
    ),
    SubjectModel(
      image: 'assets/subjects/IT.jpg',
      subjectName: 'IT',
    ),
    SubjectModel(
      image: 'assets/subjects/maths.jpg',
      subjectName: 'Maths',
    ),
    SubjectModel(
      image: 'assets/subjects/physics.jpg',
      subjectName: 'Physics',
    ),
    SubjectModel(
      image: 'assets/subjects/social.jpg',
      subjectName: 'Socail Science',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeAppBar(),
        SizedBox(height: 50),
        Text(
          "Total Assesment Attempted Dashboard",
          style: TextStyles.rubik16grey367,
        ),
        Text(
          "Carrousel Slider",
          style: TextStyles.rubik16grey367,
        ),
        SizedBox(height: 50),
        Row(
          children: [
            Text(
              'My Subjects',
              style: TextStyles.rubik16grey367,
            ),
            const Spacer(),
            Text(
              "See All",
              style: TextStyles.rubik14greyDA6,
            ),
          ],
        ),
        SizedBox(height: 30),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: subjectList.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 8, mainAxisSpacing: 52, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return SubjectItem(
              image: subjectList[index].image,
              subjectName: subjectList[index].subjectName,
            );
          },
        )
      ],
    );
  }
}

class SubjectItem extends StatelessWidget {
  final String image;
  final String subjectName;
  const SubjectItem({
    super.key,
    required this.image,
    required this.subjectName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subjectName,
                  style: TextStyles.rubik16grey367,
                ),
                Text(
                  "By Sreekanth",
                  style: TextStyles.rubik10greyDA6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.playlist_add_check_circle_rounded,
                      color: const Color.fromARGB(255, 244, 111, 101),
                    ),
                    Text(
                      "27 Tutorial",
                      style: TextStyles.rubik14greyDA6,
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
