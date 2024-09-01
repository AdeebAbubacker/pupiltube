// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/UI/Screens/teacher/assesment/widget/question_bank_popup.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';
import 'package:puppil/core/view_model/question_bank/question_bank_bloc.dart';
import 'package:uuid/uuid.dart';

class AssesmentCreationScreen extends StatelessWidget {
  const AssesmentCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ModelToAssesmentCreation modelToAssesmentCreation =
        ModalRoute.of(context)!.settings.arguments as ModelToAssesmentCreation;

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
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
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
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          'Create Assesment',
                          style: TextStyles.rubik14black54A,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _showQuestionBottomSheet(context);
                                    },
                                    child: Text("Add Question"),
                                  ),
                                ),
                                SizedBox(height: 10),

                                // Expanded(
                                //   child: ListView.builder(
                                //     shrinkWrap: true,
                                //     itemCount: 12,
                                //     itemBuilder: (context, index) {
                                //       return Text('data ');
                                //     },
                                //   ),
                                // ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<AssesmentBloc>(context)
                                          .add(
                                              AssesmentEvent.fetchAssesmentById(
                                                  id: modelToAssesmentCreation
                                                      .assementId));
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          BlocProvider.of<QuestionBankBloc>(
                                                  context)
                                              .add(QuestionBankEvent
                                                  .fetchAllQuestionBank());
                                          return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(16),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              height: 500,
                                              child: PopupContent(),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text("Import From Question Bank"),
                                  ),
                                ),
                                Text(modelToAssesmentCreation.assementId),
                                Text(modelToAssesmentCreation.title),
                                Text(modelToAssesmentCreation.description),
                                BlocBuilder<AssesmentBloc, AssesmentState>(
                                  builder: (context, state) {
                                    return state.maybeMap(
                                      fetchAssesmentBtId: (value) {
                                        return ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount:
                                              value.assesment.questions?.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Text(
                                                'data ${value.assesment.teacherId}');
                                          },
                                        );
                                      },
                                      loading: (value) {
                                        return Text("Loading");
                                      },
                                      orElse: () {
                                        return Text('data');
                                      },
                                    );
                                    // return ListView.builder(
                                    //   physics: NeverScrollableScrollPhysics(),
                                    //   itemCount: 20,
                                    //   shrinkWrap: true,
                                    //   itemBuilder: (context, index) {
                                    //     return Text('data');
                                    //   },
                                    // );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
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
