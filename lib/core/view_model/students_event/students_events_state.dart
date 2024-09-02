part of 'students_events_bloc.dart';

@freezed
class StudentsEventsState with _$StudentsEventsState {
  const factory StudentsEventsState.initial() = _Initial;

  const factory StudentsEventsState.loading() = _Loading;
  const factory StudentsEventsState.noInternet() = _NoInternet;
  const factory StudentsEventsState.error({required String error}) =
      _StudentsEventsStateFailure;
  const factory StudentsEventsState.fetchStudentsEvent(
      {required List<EventModel> studentTosubmit}) = _FetchStudentsEvent;
}
