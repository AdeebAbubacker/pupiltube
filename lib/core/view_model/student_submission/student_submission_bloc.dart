import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/submission/submission_model.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';
import 'package:puppil/core/service/teacher/submission/submission_service.dart';

part 'student_submission_event.dart';
part 'student_submission_state.dart';
part 'student_submission_bloc.freezed.dart';

class StudentSubmissionBloc
    extends Bloc<StudentSubmissionEvent, StudentSubmissionState> {
  final AssesmentService assesmentService;


  StudentSubmissionBloc({
    required this.assesmentService,
   
  }) : super(const _Initial()) {
    on<_FetchAllSubmissionByAssesmentId>((event, emit) async {
      emit(const StudentSubmissionState.loading());

      try {
        print('Bloc called');
        final result =
            await assesmentService.getListOfSubmissionByAssessmentId(uid: "ss");

        await result.fold((failure) async {
          if (failure == 0) {
            print('Internet called');
            emit(const StudentSubmissionState.noInternet());
          } else {
            print('Error called');
            emit(StudentSubmissionState.error(
                error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('Success called');
          emit(StudentSubmissionState.fetchsubmissionByAssementId(
              assesment: success));
        });
      } catch (e) {
        print('Error called');
        emit(StudentSubmissionState.error(error: 'An error occurred: $e'));
      }
    });
}
}
