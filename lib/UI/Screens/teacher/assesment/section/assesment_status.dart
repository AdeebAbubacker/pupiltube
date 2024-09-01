import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/view_model/studentToAttend/students_to_attend_bloc.dart';
import 'package:puppil/core/view_model/student_submission/student_submission_bloc.dart';

class AssesmentStatus extends StatelessWidget {
  const AssesmentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              "Students Attended",
              style: TextStyles.rubik16grey367,
            ),
            Center(
              child: BlocBuilder<StudentSubmissionBloc, StudentSubmissionState>(
                builder: (context, state) {
                  return state.maybeMap(
                    loading: (value) {
                      return const CircularProgressIndicator();
                    },
                    orElse: () {
                      return const Text("data");
                    },
                    fetchsubmissionByAssementId: (value) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: value.assesment.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 245, 245, 247),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(
                                            0.1), // Light shadow color
                                        spreadRadius:
                                            2, // How far the shadow spreads
                                        blurRadius:
                                            5, // How blurred the shadow is
                                        offset: const Offset(0,
                                            2), // Position of the shadow (x, y)
                                      ),
                                    ],
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(9))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                        ),
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 235, 233, 233),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(9))),
                                            child: const Icon(
                                              Icons.account_box_rounded,
                                              size: 30,
                                            )),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${value.assesment[index].studentName}",
                                            style: TextStyles
                                                .rubikregular14black3B,
                                          ),
                                          Text(
                                            "Aug 4, 2023 8:30pm",
                                            style: TextStyles.rubik10greyDA6,
                                          )
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.arrow_forward_ios_outlined))
                                    ],
                                  ),
                                )),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<StudentSubmissionBloc>(context).add(
                      const StudentSubmissionEvent
                          .fetchAllSubmissionByAssesmentId());
                  // SubmissionService().checkStudentSubmissions(
                  //     assessmentId: "4d2f8fe7-13f7-4ab9-b8d9-09645a727e2a");
                },
                child: const Text("Student Submitted")),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<StudentsToAttendBloc>(context).add(
                      const StudentsToAttendEvent.fetchStudentToSubmitEvent());
                  // SubmissionService().checkStudentSubmissions(
                  //     assessmentId: "4d2f8fe7-13f7-4ab9-b8d9-09645a727e2a");
                },
                child: const Text("Student Not Attended")),
            Center(
              child: BlocBuilder<StudentsToAttendBloc, StudentsToAttendState>(
                builder: (context, state) {
                  return state.maybeMap(
                    loading: (value) {
                      return const CircularProgressIndicator();
                    },
                    orElse: () {
                      return const Text("data");
                    },
                    fetchStudentsSubmit: (value) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: value.studentTosubmit.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 245, 245, 247),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(
                                            0.1), // Light shadow color
                                        spreadRadius:
                                            2, // How far the shadow spreads
                                        blurRadius:
                                            5, // How blurred the shadow is
                                        offset: const Offset(0,
                                            2), // Position of the shadow (x, y)
                                      ),
                                    ],
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(9))),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                        ),
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 235, 233, 233),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(9))),
                                            child: const Icon(
                                              Icons.account_box_rounded,
                                              size: 30,
                                            )),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            value.studentTosubmit[index].name,
                                            style: TextStyles
                                                .rubikregular14black3B,
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("Notify"))
                                    ],
                                  ),
                                )),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
