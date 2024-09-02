part of 'fetch_assesment_by_colleages_bloc.dart';

@freezed
class FetchAssesmentByColleagesEvent with _$FetchAssesmentByColleagesEvent {
  const factory FetchAssesmentByColleagesEvent.started() = _Started;
  const factory FetchAssesmentByColleagesEvent.fetchAssesmentbycolleages() =
      _FetchAssesmentbycolleagesEvent;
}
