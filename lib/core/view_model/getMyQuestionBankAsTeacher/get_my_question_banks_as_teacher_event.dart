part of 'get_my_question_banks_as_teacher_bloc.dart';

@freezed
class GetMyQuestionBanksAsTeacherEvent with _$GetMyQuestionBanksAsTeacherEvent {
  const factory GetMyQuestionBanksAsTeacherEvent.started() = _Started;
  const factory GetMyQuestionBanksAsTeacherEvent.fetchQuestionBankByTeacherId() =
      _FetchQuestionBankByTeacherIdEvent;
}
