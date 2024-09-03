import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/helper/token/get_uid.dart';
import 'package:puppil/core/view_model/getMyQuestionBankAsTeacher/get_my_question_banks_as_teacher_bloc.dart';
import 'package:puppil/core/view_model/question_bank/question_bank_bloc.dart';

class Pppppppppppp extends StatelessWidget {
  const Pppppppppppp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  final teacheruid = await getUserUID();
                  BlocProvider.of<GetMyQuestionBanksAsTeacherBloc>(context).add(
                    GetMyQuestionBanksAsTeacherEvent
                        .fetchQuestionBankByTeacherId(),
                  );
                },
                child: Text('data'))
          ],
        ),
      ),
    );
  }
}
