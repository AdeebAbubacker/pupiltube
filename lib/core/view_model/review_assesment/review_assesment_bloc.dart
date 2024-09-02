import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/review_model/review_model.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';

part 'review_assesment_event.dart';
part 'review_assesment_state.dart';
part 'review_assesment_bloc.freezed.dart';

class ReviewAssesmentBloc
    extends Bloc<ReviewAssesmentEvent, ReviewAssesmentState> {
  final AssesmentService assesmentService;
  ReviewAssesmentBloc({required this.assesmentService}) : super(_Initial()) {
    on<_Review>((event, emit) async {
      emit(const ReviewAssesmentState.loading());

      try {
        print('Bloc called');
        final result = await assesmentService.getAssessmentReview(
          assessmentId: "1031e45f-e93f-44da-81c4-93306bd66f53",
          studentId: "p3OOwIah1BYnZDtz7TNep9li5U42",
        );

        await result.fold((failure) async {
          if (failure == 0) {
            print('Internet called');
            emit(const ReviewAssesmentState.noInternet());
          } else {
            print('Error called');
            emit(ReviewAssesmentState.error(
                error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('Success called');
          emit(ReviewAssesmentState.reviewAssesment(assesment: success));
        });
      } catch (e) {
        print('Error called');
        emit(ReviewAssesmentState.error(error: 'An error occurred: $e'));
      }
    });
  }
}
