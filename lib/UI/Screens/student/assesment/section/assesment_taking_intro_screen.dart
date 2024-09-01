// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';

class AssesmentTakingIntroScreen extends StatelessWidget {
  const AssesmentTakingIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: screenWidth,
            height: screenHeight * 0.4,
            child: Container(
              color: const Color.fromARGB(255, 248, 85, 73),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      Text(
                        "Detail Quiz",
                        style: TextStyles.rubik18whiteFF,
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ui UX Design Quiz',
                          style: TextStyles.rubik16whiteFF,
                        ),
                        Text(
                          'GET 100 Points',
                          style: TextStyles.rubik16whiteFF,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: screenWidth,
            height: screenHeight * 0.75,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12),
                    Center(
                      child: Container(
                        height: 4,
                        width: 60,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Brief explanation about this quiz',
                            style: TextStyles.rubik14black54A,
                          ),
                          SizedBox(height: 10),
                          QuizInfoItem(
                            icon: Icons.list_alt,
                            title: '10 Question',
                            subtitle: '10 point for a correct answer',
                          ),
                          QuizInfoItem(
                            icon: Icons.timer,
                            title: '1 hour 15 min',
                            subtitle: 'Total duration of the quiz',
                          ),
                          QuizInfoItem(
                            icon: Icons.star,
                            title: 'Win 10 star',
                            subtitle: 'Answer all questions correctly',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Please read the text below carefully so you can understand it',
                            style: TextStyles.rubik14black54A,
                          ),
                          SizedBox(height: 10),
                          QuizInstructions(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text("Continue")),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuizInfoItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const QuizInfoItem({super.key, 
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 30, color: const Color.fromARGB(255, 251, 152, 145)),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyles.rubik13black54A,
            ),
            Text(
              subtitle,
              style: TextStyles.rubik12greyDA6,
            ),
          ],
        ),
      ],
    );
  }
}

class QuizInstructions extends StatelessWidget {
  const QuizInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 10, // Set to a value that makes sense or remove it
                height: 10, // Adjust height as needed

                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.8, // Adjust width as needed
              child: Text(
                '10 point awarded for a correct answer and no marks for an incorrect answer.',
                style: TextStyles.rubik13black54Aw400,
                softWrap: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 10, // Set to a value that makes sense or remove it
                height: 10, // Adjust height as needed

                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.8, // Adjust width as needed
              child: Text(
                'Tap on options to select the correct answer.',
                style: TextStyles.rubik13black54Aw400,
                softWrap: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 10, // Set to a value that makes sense or remove it
                height: 10, // Adjust height as needed

                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.8, // Adjust width as needed
              child: Text(
                'Tap on the bookmark icon to save interesting questions.',
                style: TextStyles.rubik13black54Aw400,
                softWrap: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Click submit if you are sure you want to complete all the quizzes.',
          style: TextStyles.rubik13black54Aw400,
        ),
      ],
    );
  }
}
