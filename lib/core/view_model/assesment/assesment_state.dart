part of 'assesment_bloc.dart';

@freezed
class AssesmentState with _$AssesmentState {
  const factory AssesmentState.initial() = _Initial;
  const factory AssesmentState.loading() = _Loading;
  const factory AssesmentState.noInternet() = _NoInternet;
  const factory AssesmentState.createdAssesment(
      {required AssessmentModel assesment}) = _CreatedAssesment;
  const factory AssesmentState.fetchAssesment(
      {required List<AssessmentModel> assesment}) = _FetchAssesment;
  const factory AssesmentState.fetchAssesmentForMyClass(
      {required List<AssessmentModel> assesment}) = _FetchAssesmentForMyClass;
  const factory AssesmentState.fetchAssesmentTodo(
      {required List<AssessmentModel> assesment}) = _FetchAssesmentTodo;
  const factory AssesmentState.fetchAssesmentOverDue(
      {required List<AssessmentModel> assesment}) = _FetchAssesmentOverdue;
  const factory AssesmentState.fetchAssesmentCompleted(
      {required List<AssessmentModel> assesment}) = _FetchAssesmentsCompleted;
  const factory AssesmentState.fetchAssesmentBtId(
      {required AssessmentModel assesment}) = _FetchAssesmentBtId;
  const factory AssesmentState.fetchAssesmentForMyClassAsTeacher(
          {required List<AssessmentModel> assesment}) =
      _FetchAssesmentforMyClassAsTeacher;
  const factory AssesmentState.fetchOngoingAssesmentAsTeacher(
          {required List<AssessmentModel> assesment}) =
      _FetchOngoingassesmentAsTeacher;
  const factory AssesmentState.fetchdraftAssesment(
      {required List<AssessmentModel> assesment}) = _FetchdraftAssesment;
  const factory AssesmentState.error({required String error}) =
      _AssessmentFailure;
  const factory AssesmentState.importQuestionBankSuccess(
      {required int success}) = _ImportQuestionBankSuccess;
}
