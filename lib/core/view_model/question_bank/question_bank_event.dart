part of 'question_bank_bloc.dart';

@freezed
class QuestionBankEvent with _$QuestionBankEvent {
  const factory QuestionBankEvent.started() = _Started;
  const factory QuestionBankEvent.fetchAllQuestionBank() =
      _FetchAllQuestionBankEvent;
  const factory QuestionBankEvent.fetchQuestionBankById(
      {required String questionBankId}) = _FetchQuestionBankByIdEvent;
}
