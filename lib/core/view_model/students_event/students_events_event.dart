part of 'students_events_bloc.dart';

@freezed
class StudentsEventsEvent with _$StudentsEventsEvent {
  const factory StudentsEventsEvent.started() = _Started;
  const factory StudentsEventsEvent.fetchStudentsEvent() =
      _FetchStudentsEventEvent;
}