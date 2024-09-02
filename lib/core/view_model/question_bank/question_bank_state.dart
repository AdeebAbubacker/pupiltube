part of 'question_bank_bloc.dart';

@freezed
class QuestionBankState with _$QuestionBankState {
  const factory QuestionBankState.initial() = _Initial;
  const factory QuestionBankState.loading() = _Loading;
  const factory QuestionBankState.noInternet() = _NoInternet;
  const factory QuestionBankState.createdQuestionBank(
      {required QuestionBank questionBank}) = _CreatedQuestionBank;
  const factory QuestionBankState.fetchAllQuestionBank(
      {required List<QuestionBank> assesment}) = _FetchAllQuestionBank;
  const factory QuestionBankState.fetchQuestionBankbyId(
      {required QuestionBank questionBank}) = _FetchQuestionBankbyId;
  const factory QuestionBankState.error({required String error}) =
      _QuestionBankFailure;
}
