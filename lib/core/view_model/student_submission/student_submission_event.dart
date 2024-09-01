part of 'student_submission_bloc.dart';

@freezed
class StudentSubmissionEvent with _$StudentSubmissionEvent {
  const factory StudentSubmissionEvent.started() = _Started;
  const factory StudentSubmissionEvent.fetchAllSubmissionByAssesmentId() =
      _FetchAllSubmissionByAssesmentId;
  const factory StudentSubmissionEvent.fetchStudentToSubmitEvent() =
      _FetchStudentToSubmitEvent;
}
