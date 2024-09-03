// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/view_model/getMyQuestionBankAsTeacher/get_my_question_banks_as_teacher_bloc.dart';
import 'package:puppil/core/view_model/question_bank/question_bank_bloc.dart';

class QuestionBankManagementScreen extends StatefulWidget {
  const QuestionBankManagementScreen({super.key});

  @override
  State<QuestionBankManagementScreen> createState() =>
      _QuestionBankManagementScreenState();
}

class _QuestionBankManagementScreenState
    extends State<QuestionBankManagementScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<GetMyQuestionBanksAsTeacherBloc>(context)
          .add(GetMyQuestionBanksAsTeacherEvent.fetchQuestionBankByTeacherId());
      BlocProvider.of<QuestionBankBloc>(context)
          .add(QuestionBankEvent.fetchAllQuestionBank());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          "Question Management",
          style: TextStyles.rubik20black54Aw600,
        ),
        SizedBox(height: 10),

        SizedBox(height: 10),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 93, 93),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Stack(
            children: [
              Positioned(
                left: 2,
                top: 20,
                child: Image.asset(
                  'assets/assesment/assesment_dashboard.png',
                  height: 140,
                ),
              ),
              Positioned(
                right: 5,
                top: 30,
                child: SizedBox(
                  width: 175,
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          Text(
                            "Create Question bank for Assessments",
                            style: TextStyles.rubik14whiteFFw600,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            AppRouteService.navigateToquestionBankIntro(
                                context);
                          },
                          child: Text("Create Now")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 30),
        Text(
          "My Question Bank",
          style: TextStyles.rubik14black54A,
        ),
        SizedBox(height: 20),
        BlocBuilder<GetMyQuestionBanksAsTeacherBloc,
            GetMyQuestionBanksAsTeacherState>(
          builder: (context, state) {
            return state.maybeMap(
              fetchQuestionBankByTeacherId: (value) {
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.assesment.length,
                  itemBuilder: (context, index) {
                    final questionBank = value.assesment[index];

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 22),
                      child: Container(
                        // margin: const EdgeInsets.symmetric(
                        //     vertical: 8, horizontal: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 245, 247),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.1), // Light shadow color
                                spreadRadius: 2, // How far the shadow spreads
                                blurRadius: 5, // How blurred the shadow is
                                offset: const Offset(
                                    0, 2), // Position of the shadow (x, y)
                              ),
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(9))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title of the Question Bank
                            Text(
                              questionBank.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Description of the Question Bank
                            Text(
                              questionBank.description,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Display Teacher Name and Created Date
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Teacher: ${questionBank.teacherName}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text(
                                  "Created: ${questionBank.createdAt.toDate().toString().split(' ').first}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              orElse: () {
                return Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 197, 245, 251),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Center(
                      child: Text(
                          " Question Bank 1  [Edit Button] [Delete Button"),
                    ));
              },
            );
            //   return SizedBox(height: 10);
          },
        ),
        // Container(
        //     width: double.infinity,
        //     height: 60,
        //     decoration: BoxDecoration(
        //         color: const Color.fromARGB(255, 197, 245, 251),
        //         borderRadius: BorderRadius.all(Radius.circular(12))),
        //     child: Center(
        //       child: Text(" Question Bank 1  [Edit Button] [Delete Button"),
        //     )),
        // SizedBox(height: 10),
        // Container(
        //     width: double.infinity,
        //     height: 60,
        //     decoration: BoxDecoration(
        //         color: const Color.fromARGB(255, 197, 245, 251),
        //         borderRadius: BorderRadius.all(Radius.circular(12))),
        //     child: Center(
        //       child: Text(" Question Bank 2  [Edit Button] [Delete Button"),
        //     )),
        // SizedBox(height: 10),

        SizedBox(height: 30),
        Text(
          "Popular Question Banks",
          style: TextStyles.rubik14black54A,
        ),
        SizedBox(height: 10),
        SizedBox(height: 10),
        BlocBuilder<QuestionBankBloc, QuestionBankState>(
          builder: (context, state) {
            return state.maybeMap(
              fetchAllQuestionBank: (value) {
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.assesment.length,
                  itemBuilder: (context, index) {
                    final questionBank = value.assesment[index];

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 22),
                      child: Container(
                        // margin: const EdgeInsets.symmetric(
                        //     vertical: 8, horizontal: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 245, 247),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.1), // Light shadow color
                              spreadRadius: 2, // How far the shadow spreads
                              blurRadius: 5, // How blurred the shadow is
                              offset: const Offset(
                                  0, 2), // Position of the shadow (x, y)
                            ),
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(9)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title of the Question Bank
                            Text(
                              questionBank.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Description of the Question Bank
                            Text(
                              questionBank.description,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Display Teacher Name and Created Date
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Teacher: ${questionBank.teacherName}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text(
                                  "Created: ${questionBank.createdAt.toDate().toString().split(' ').first}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              orElse: () {
                return Text("data");
              },
            );
            // Container(
            //     width: double.infinity,
            //     height: 60,
            //     decoration: BoxDecoration(
            //         color: const Color.fromARGB(255, 197, 245, 251),
            //         borderRadius: BorderRadius.all(Radius.circular(12))),
            //     child: Center(
            //       child: Text(" Question Bank 1  By Sreekesh"),
            //     ));
          },
        ),
        SizedBox(height: 10),

        SizedBox(height: 10),
      ],
    );
  }
}
