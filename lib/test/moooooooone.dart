import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';
import 'package:uuid/uuid.dart';

class ApiTest extends StatelessWidget {
  ApiTest({super.key});

  // Create an instance of Uuid

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Question Bank'),
      ),
      body: BlocListener<AssesmentBloc, AssesmentState>(
        listener: (context, state) {
          state.maybeMap(
            importQuestionBankSuccess: (value) {
              print('object');
            },
            orElse: () {
              print('object');
            },
          );
        },
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                BlocProvider.of<AssesmentBloc>(context).add(
                    AssesmentEvent.importQuestionBank(
                        assesmentId: '037ac658-ef13-4410-8780-ac0db0ba9ca3',
                        question: [
                      Question(
                        questionId: "fdddddddddd", // Generate a unique ID
                        options: [
                          'gggggggggggg',
                          'Heminfjsfgway',
                          'Austffgjfgjhen',
                          'Didfdfhdfhfckens'
                        ],
                        correctAnswer: 'Shakesdfhfgpeare',
                        questionText: 'Whfhfgt" and "Hamlet"?',
                      ),
                      Question(
                        questionId: "xzzzzzz", // Generate a unique ID
                        options: [
                          'Shakespeare',
                          'Hemingway',
                          'Austen',
                          'Dickens'
                        ],
                        correctAnswer: 'Shakespeare',
                        questionText: 'dgdfgdfhfgj"?',
                      ),
                    ]));
                // await AssesmentService().importFromQuestionBank(
                //   assessmentId: '037ac658-ef13-4410-8780-ac0db0ba9ca3',
                //   newQuestions: [
                //     Question(
                //       questionId: Uuid().v4(), // Generate a unique ID
                //       options: ['Shakespeare', 'Hemingway', 'Austen', 'Dickens'],
                //       correctAnswer: 'Shakespeare',
                //       questionText:
                //           'Who is the famous playwright known for works like "Romeo and Juliet" and "Hamlet"?',
                //     ),
                //   ],
                // );
              },
              child: Text("Call Api"),
            ),
          ],
        ),
      ),
    );
  }
}
