// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';
import 'package:puppil/core/view_model/question_bank/question_bank_bloc.dart';
import 'package:puppil/core/view_model/student_submission/student_submission_bloc.dart';
import 'package:uuid/uuid.dart';

class QuestionBankCreationScreen extends StatefulWidget {
  final String? someArgument;
  QuestionBankCreationScreen({
    super.key,
    this.someArgument,
  });

  @override
  State<QuestionBankCreationScreen> createState() =>
      _QuestionBankCreationScreenState();
}

class _QuestionBankCreationScreenState
    extends State<QuestionBankCreationScreen> {
  bool isFirstQuestion = true;

  @override
  Widget build(BuildContext context) {
    print(widget.someArgument);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<QuestionBankBloc>(context).add(
          QuestionBankEvent.fetchQuestionBankById(
              questionBankId: "1f5c43d7-571c-4401-b40f-8d5802bf1b9f"));
    });
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: BlocBuilder<QuestionBankBloc, QuestionBankState>(
        builder: (context, state) {
          return state.maybeMap(
            fetchQuestionBankbyId: (value) {
              if (value.questionBank.questions.length > 1) {
                return FloatingActionButton(
                  onPressed: () {
                    _showQuestionBottomSheet(context);
                  },
                  child: Icon(Icons.add),
                );
              }
              // Return an empty container if the FAB should not be displayed
              return SizedBox.shrink();
            },
            orElse: () {
              // Return an empty container for any other state
              return SizedBox.shrink();
            },
          );
        },
      ),
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Create questions for question bank',
                        style: TextStyles.rubik14black54A,
                      ),
                    ),
                    Expanded(
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
                                  BlocBuilder<QuestionBankBloc,
                                      QuestionBankState>(
                                    builder: (context, state) {
                                      return state.maybeMap(
                                        fetchQuestionBankbyId: (value) {
                                          if (value.questionBank.questions
                                                  .length >
                                              1) {
                                            isFirstQuestion = false;
                                          }

                                          return ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: value
                                                .questionBank.questions.length,
                                            padding: EdgeInsets.all(0),
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.1),
                                                        spreadRadius: 2,
                                                        blurRadius: 5,
                                                        offset:
                                                            const Offset(0, 2),
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    9),
                                                            topRight:
                                                                Radius.circular(
                                                                    9)),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Wrap(
                                                          children: [
                                                            Text(
                                                                "${index + 1}. ${value.questionBank.questions[index].question}"),
                                                            OptionsView(
                                                              options: value
                                                                  .questionBank
                                                                  .questions[
                                                                      index]
                                                                  .options, // This should be a List<String>
                                                              correctAnswer: value
                                                                  .questionBank
                                                                  .questions[
                                                                      index]
                                                                  .answer, // Ensure this is a String matching an option
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        orElse: () {
                                          return SizedBox();
                                        },
                                      );
                                      // return ListView.builder(
                                      //   shrinkWrap: true,
                                      //   itemCount: 12,
                                      //   padding: EdgeInsets.all(0),
                                      //   itemBuilder: (context, index) {
                                      //     return Text("data");
                                      //   },
                                      // );
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  BlocBuilder<QuestionBankBloc,
                                      QuestionBankState>(
                                    builder: (context, state) {
                                      return state.maybeMap(
                                        fetchQuestionBankbyId: (value) {
                                          if (value.questionBank.questions
                                                  .length <
                                              1) {
                                            // Display the button if there are no questions
                                            return SizedBox(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  _showQuestionBottomSheet(
                                                      context);
                                                },
                                                child:
                                                    Text("Add First Question"),
                                              ),
                                            );
                                          }
                                          // If there are questions, return an empty container or any other widget
                                          return SizedBox
                                              .shrink(); // No button displayed
                                        },
                                        orElse: () {
                                          // Return an empty container for any other state
                                          return SizedBox.shrink();
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
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
                                      '1f5c43d7-571c-4401-b40f-8d5802bf1b9f',
                                  newQuestion: {
                                    "questionId": questionId,
                                    "questionText": "How are you?",
                                    "options": ["Ok", "well"],
                                    "correctAnswer": "well"
                                  },
                                );
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) async {
                                  BlocProvider.of<QuestionBankBloc>(context).add(
                                      QuestionBankEvent.fetchQuestionBankById(
                                          questionBankId:
                                              "1f5c43d7-571c-4401-b40f-8d5802bf1b9f"));
                                });
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

class OptionsView extends StatelessWidget {
  final List<String> options; // Expecting a List<String> here
  final String correctAnswer;

  OptionsView({required this.options, required this.correctAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: options.asMap().entries.map((entry) {
        int index = entry.key;
        String option = entry.value;
        String optionLabel = String.fromCharCode(
            'A'.codeUnitAt(0) + index); // 'A', 'B', 'C', etc.

        bool isCorrect = option == correctAnswer;

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: isCorrect ? Colors.green : Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: Text(
                  optionLabel,
                  style: TextStyle(
                    color: isCorrect ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  option,
                  style: TextStyle(
                    color: isCorrect ? Colors.green : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
