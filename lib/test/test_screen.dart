// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/student/student_submission/student_submission_service.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';

class TestScreen1 extends StatelessWidget {
  const TestScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: BlocBuilder<AssesmentBloc, AssesmentState>(
                builder: (context, state) {
                  return state.maybeMap(loading: (value) {
                    return Text("Loading");
                  }, fetchAssesmentForMyClass: (value) {
                    return ListView.builder(
                      itemCount: value.assesment.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color:
                                      const Color.fromARGB(255, 199, 199, 199)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                        "${value.assesment[index].description}"),
                                    ElevatedButton(
                                        onPressed: () {
                                          AppRouteService.navigateTotest2(
                                              context,
                                              assementmodel:
                                                  value.assesment[index]);
                                        },
                                        child: Text("data"))
                                  ],
                                ),
                              )),
                        );
                      },
                    );
                    //   Text('data ${value.assesment.length}');
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
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () async {
                  BlocProvider.of<AssesmentBloc>(context).add(
                      AssesmentEvent.fetchAssesmentForMyClassEvent(
                          id: '2morY9vjnbMOa7p4TMhhEwTRma03'));
                },
                child: Text("Call My Assesmnet"))
          ],
        ),
      ),
    );
  }
}
