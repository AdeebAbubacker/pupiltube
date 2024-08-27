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

  const factory AssesmentState.error({required String error}) =
      _AssessmentFailure;
  const factory AssesmentState.importQuestionBankSuccess(
      {required int success}) = _ImportQuestionBankSuccess;
}
