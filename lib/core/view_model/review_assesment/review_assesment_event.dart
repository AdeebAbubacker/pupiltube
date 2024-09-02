part of 'review_assesment_bloc.dart';

@freezed
class ReviewAssesmentEvent with _$ReviewAssesmentEvent {
  const factory ReviewAssesmentEvent.started() = _Started;
  const factory ReviewAssesmentEvent.review() = _Review;
}
