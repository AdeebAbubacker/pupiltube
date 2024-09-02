part of 'students_to_attend_bloc.dart';

@freezed
class StudentsToAttendEvent with _$StudentsToAttendEvent {
  const factory StudentsToAttendEvent.started() = _Started;
  const factory StudentsToAttendEvent.fetchStudentToSubmitEvent() =
      _FetchStudentToSubmitEvent;
}
