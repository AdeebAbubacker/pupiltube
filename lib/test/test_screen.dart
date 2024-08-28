// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/service/student/student_submission/student_submission_service.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<AssesmentBloc, AssesmentState>(
              builder: (context, state) {
                return state.maybeMap(loading: (value) {
                  return Text("Loading");
                }, fetchAssesmentForMyClass: (value) {
                  return Text('data ${value.assesment.length}');
                }, orElse: () {
                  return Text('data');
                });
                // return Column(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     ElevatedButton(
                //         onPressed: () async {
                //           await AssesmentStudentService().fetchClassIdForStudent(
                //               "KBxPbAbXwVdGb00YU3tOAJrM3Py2");
                //           // await QuestionBankService().createClass();
                //         },
                //         child: Text("fetch"))
                //   ],
                // );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                await StudentSubmissionService().studentSubmission();
                // BlocProvider.of<AssesmentBloc>(context).add(
                //     AssesmentEvent.fetchAssesmentForMyClassEvent(id: '2morY9vjnbMOa7p4TMhhEwTRma03'));
              },
              child: Text("data"))
        ],
      ),
    );
  }
}
