import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/helper/token/get_uid.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';

part 'get_my_question_banks_as_teacher_event.dart';
part 'get_my_question_banks_as_teacher_state.dart';
part 'get_my_question_banks_as_teacher_bloc.freezed.dart';

class GetMyQuestionBanksAsTeacherBloc extends Bloc<
    GetMyQuestionBanksAsTeacherEvent, GetMyQuestionBanksAsTeacherState> {
  final QuestionBankService questionBankService;
  GetMyQuestionBanksAsTeacherBloc({
    required this.questionBankService,
  }) : super(_Initial()) {
    on<_FetchQuestionBankByTeacherIdEvent>((event, emit) async {
      final uid = await getUserUID();
      emit(const GetMyQuestionBanksAsTeacherState.loading());

      try {
        print('Bloc called');
        final result = await questionBankService.fetchQuestionBankByTeacherId(
          teacherUid: "ucK6OFLTvNbdDMjHebCKAyWsHwE2",
        );

        await result.fold((failure) async {
          if (failure == 0) {
            print('Internet called');
            emit(const GetMyQuestionBanksAsTeacherState.noInternet());
          } else {
            print('Error called');
            emit(GetMyQuestionBanksAsTeacherState.error(
                error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('Success called');
          print('-----------------------${success[0].title}');
          emit(GetMyQuestionBanksAsTeacherState.fetchQuestionBankByTeacherId(
              assesment: success));
        });
      } catch (e) {
        print('Error called');
        emit(GetMyQuestionBanksAsTeacherState.error(
            error: 'An error occurred: $e'));
      }
    });
  }
}
