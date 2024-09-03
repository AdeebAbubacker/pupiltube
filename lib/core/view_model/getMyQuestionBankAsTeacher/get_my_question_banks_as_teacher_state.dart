part of 'get_my_question_banks_as_teacher_bloc.dart';

@freezed
class GetMyQuestionBanksAsTeacherState with _$GetMyQuestionBanksAsTeacherState {
  const factory GetMyQuestionBanksAsTeacherState.initial() = _Initial;
  const factory GetMyQuestionBanksAsTeacherState.loading() = _Loading;
  const factory GetMyQuestionBanksAsTeacherState.noInternet() = _NoInternet;
  const factory GetMyQuestionBanksAsTeacherState.error(
      {required String error}) = _GetMyQuestionBanksAsTeacherFailure;
  const factory GetMyQuestionBanksAsTeacherState.fetchQuestionBankByTeacherId(
      {required List<QuestionBank> assesment}) = _FetchMyQuestionBank;
}
