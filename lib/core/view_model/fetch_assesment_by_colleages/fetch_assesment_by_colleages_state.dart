part of 'fetch_assesment_by_colleages_bloc.dart';

@freezed
class FetchAssesmentByColleagesState with _$FetchAssesmentByColleagesState {
  const factory FetchAssesmentByColleagesState.initial() = _Initial;
  const factory FetchAssesmentByColleagesState.loading() = _Loading;
  const factory FetchAssesmentByColleagesState.noInternet() = _NoInternet;
  const factory FetchAssesmentByColleagesState.fetchAssesmentByColleage(
      {required List<AssessmentModel> assesment}) = _FetchAssesmentByColleage;

  const factory FetchAssesmentByColleagesState.error({required String error}) =
      _AssessmentFailures;
}
