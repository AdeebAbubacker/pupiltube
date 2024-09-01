part of 'students_to_attend_bloc.dart';

@freezed
class StudentsToAttendState with _$StudentsToAttendState {
  const factory StudentsToAttendState.initial() = _Initial;

  const factory StudentsToAttendState.loading() = _Loading;
  const factory StudentsToAttendState.noInternet() = _NoInternet;
  const factory StudentsToAttendState.error({required String error}) =
      _StudentsToAttendStateFailure;
  const factory StudentsToAttendState.fetchStudentsSubmit(
      {required List<StudentToSubmit> studentTosubmit}) = _FetchStudentsSubmit;
}
