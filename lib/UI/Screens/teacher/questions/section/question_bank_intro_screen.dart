// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';

class QuestionBankIntroScreen extends StatelessWidget {
  QuestionBankIntroScreen({super.key});
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

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
                        "Question Bank",
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
                          'Create your Question Bank',
                          style: TextStyles.rubik16whiteFF,
                        ),
                        Text(
                          'Subject name',
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
                          SizedBox(height: 10),
                          TextFormField(
                            controller: titlecontroller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9),
                                ),
                              ),
                              hintText: 'Title',
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: descriptioncontroller,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9),
                                  ),
                                ),
                                hintText: 'Description'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Please read the text below carefully before creating question bank',
                            style: TextStyles.rubik14black54A,
                          ),
                          SizedBox(height: 10),
                          QuizInstructions(),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                QuestionBankService().createQuestionBank(
                                  title: 'Chapter  ',
                                  description: 'Chemical Formula',
                                );
                                AppRouteService.navigateToquestionBankCreation(
                                    context);
                              },
                              child: Text(
                                "Continue",
                              ),
                            ),
                          ),
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
                'Please only add questions related to title and description',
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
                'If possible create question bank according to chapters',
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
                'Maximium avoid previous year ask question if possible',
                style: TextStyles.rubik13black54Aw400,
                softWrap: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Click Contine if you are sure you want to create question bank.',
          style: TextStyles.rubik13black54Aw400,
        ),
      ],
    );
  }
}
