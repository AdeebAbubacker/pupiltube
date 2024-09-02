part of 'assesment_bloc.dart';

@freezed
class AssesmentEvent with _$AssesmentEvent {
  const factory AssesmentEvent.started() = _Started;
  const factory AssesmentEvent.createAssessment({
    required String title,
  }) = _CreateAssessment;
  const factory AssesmentEvent.fetchAssesment() = _FetchAssesmentEvent;
  const factory AssesmentEvent.fetchAssesmentById({required String id}) =
      _FetchAssesmentByIdEvent;
  const factory AssesmentEvent.fetchAssesmentForMyClassEvent(
      {required String id}) = _FetchAssesmentForMyClassEvent;
  const factory AssesmentEvent.fetchAssesmentToDo({required String id}) =
      _FetchAssesmentToDo;
  const factory AssesmentEvent.fetchAssesmentOverDue({required String id}) =
      _FetchAssesmentOverDue;
  const factory AssesmentEvent.fetchAssesmentCompleted({required String id}) =
      _FetchAssesmentCompleted;
  const factory AssesmentEvent.fetchAssesmentForMyClassAsTeacher() =
      _FetchAssesmentForMyClassAsTeacher;
  const factory AssesmentEvent.fetchOngoingAssesmentAsTeacher() =
      _FetchOngoingAssesmentAsTeacher;
  const factory AssesmentEvent.fetchdraftAssement() = _FetchdraftAssement;
  const factory AssesmentEvent.importQuestionBank({
    required String assesmentId,
    required List<Question> question,
  }) = _ImportQuestionBankEvent;
}
