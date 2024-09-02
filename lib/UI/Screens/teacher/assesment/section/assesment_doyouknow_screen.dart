// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';

class AssesmentDoyouknowScreen extends StatelessWidget {
  final String? someArgument;
  AssesmentDoyouknowScreen({
    super.key,
    this.someArgument,
  });
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
                        "Assesment",
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
                          'Create your Assesment',
                          style: TextStyles.rubik16whiteFF,
                        ),
                        Text(
                          'Nikhil Sir',
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image.asset('assets/animated/doYouKnow.png'),
                            Text(
                              'Do You Know ?',
                              style: TextStyles.rubik14black54A,
                            ),
                            SizedBox(height: 10),
                            AssesmentInstruction(),
                            Center(
                              child: ElevatedButton(
                                  onPressed: () async {
                                    AppRouteService.navigateToassesmentIntro(
                                        context,
                                        someArgument: 's');
                                  },
                                  child: Text("Continue")),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AssesmentInstruction extends StatelessWidget {
  const AssesmentInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "Assessments are a powerful tool to gauge the understanding and knowledge of students. By regularly assessing students, educators can:"),
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
                'Identify areas where students excel and where they may need additional support.',
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
                'Motivate students to stay engaged and committed to their studies.',
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
                'Track progress over time to ensure students are meeting learning objectives.',
                style: TextStyles.rubik13black54Aw400,
                softWrap: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Click Contine if you are sure you want to create Assesment',
          style: TextStyles.rubik13black54Aw400,
        ),
      ],
    );
  }
}
