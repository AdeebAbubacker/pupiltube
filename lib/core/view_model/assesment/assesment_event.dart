part of 'assesment_bloc.dart';

@freezed
class AssesmentEvent with _$AssesmentEvent {
  const factory AssesmentEvent.started() = _Started;
  const factory AssesmentEvent.createAssessment({
    required String title,
  }) = _CreateAssessment;
  const factory AssesmentEvent.fetchAssesment() = _FetchAssesmentEvent;
  const factory AssesmentEvent.importQuestionBank({
    required String assesmentId,
    required List<Question> question,
  }) = _ImportQuestionBankEvent;
}
