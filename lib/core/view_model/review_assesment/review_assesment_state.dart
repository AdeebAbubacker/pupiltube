part of 'review_assesment_bloc.dart';

@freezed
class ReviewAssesmentState with _$ReviewAssesmentState {
  const factory ReviewAssesmentState.initial() = _Initial;
  const factory ReviewAssesmentState.loading() = _Loading;
  const factory ReviewAssesmentState.noInternet() = _NoInternet;
  const factory ReviewAssesmentState.error({required String error}) =
      _ReviewAssesmentStateFailure;
  const factory ReviewAssesmentState.reviewAssesment(
      {required AssessmentReviewResponse assesment}) = _ReviewAssesment;
}
