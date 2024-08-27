// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';
import 'package:uuid/uuid.dart';

class QuestionBankCreationScreen extends StatelessWidget {
  const QuestionBankCreationScreen({super.key});

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
                          'Chapter 1',
                          style: TextStyles.rubik16whiteFF,
                        ),
                        Text(
                          'Earth and Ameoba',
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
                          Text(
                            'Create questions for question bank',
                            style: TextStyles.rubik14black54A,
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                _showQuestionBottomSheet(context);
                              },
                              child: Text("Add First Question"),
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

  void _showQuestionBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Enter your question',
                                style: TextStyles.rubik10greyDA6,
                              ),
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.pop(
                                      context); // Close the bottom sheet
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Question',
                            ),
                            maxLines: 3,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Options',
                            style: TextStyles.rubik12greyDA6,
                          ),
                          SizedBox(height: 10),
                          for (int i = 0; i < 4; i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Option ${i + 1}',
                                ),
                              ),
                            ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                final String questionId = Uuid().v4();
                                await QuestionBankService().updateQuestion(
                                  questionBankId:
                                      'a7baab58-5434-4aa8-b309-2565279e0b7c',
                                  newQuestion: {
                                    "questionId": questionId,
                                    "questionText": "How are you?",
                                    "options": ["Ok", "well"],
                                    "correctAnswer": "well"
                                  },
                                );
                                Navigator.pop(
                                    context); // Close the bottom sheet
                              },
                              child: Text("Save Question"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
