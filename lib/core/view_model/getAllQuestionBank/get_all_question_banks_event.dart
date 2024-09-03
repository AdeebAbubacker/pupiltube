part of 'get_all_question_banks_bloc.dart';

@freezed
class GetAllQuestionBanksEvent with _$GetAllQuestionBanksEvent {
  const factory GetAllQuestionBanksEvent.started() = _Started;
}