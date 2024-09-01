part of 'student_submission_bloc.dart';

@freezed
class StudentSubmissionState with _$StudentSubmissionState {
  const factory StudentSubmissionState.initial() = _Initial;
  const factory StudentSubmissionState.loading() = _Loading;
  const factory StudentSubmissionState.noInternet() = _NoInternet;
  const factory StudentSubmissionState.error({required String error}) =
      _StudentSubmissionStateFailure;
  const factory StudentSubmissionState.fetchsubmissionByAssementId(
          {required List<SubmissionModel> assesment}) =
      _FetchsubmissionByAssementId;
  const factory StudentSubmissionState.fetchstudentsToSubmit(
          {required List<StudentToSubmit> studentToSubmit}) =
      _FetchstudentsToSubmit;
}
