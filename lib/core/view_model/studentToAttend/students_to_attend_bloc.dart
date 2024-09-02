import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/service/teacher/submission/submission_service.dart';

part 'students_to_attend_event.dart';
part 'students_to_attend_state.dart';
part 'students_to_attend_bloc.freezed.dart';

class StudentsToAttendBloc
    extends Bloc<StudentsToAttendEvent, StudentsToAttendState> {
  final SubmissionService submissionService;
  StudentsToAttendBloc({required this.submissionService})
      : super(const _Initial()) {
    on<_FetchStudentToSubmitEvent>((event, emit) async {
      emit(const StudentsToAttendState.loading());

      try {
        print('Bloc called');
        final result = await submissionService.checkStudentSubmissions(
            assessmentId: "1031e45f-e93f-44da-81c4-93306bd66f53");

        await result.fold((failure) async {
          if (failure == 0) {
            print('Internet called');
            emit(const StudentsToAttendState.noInternet());
          } else {
            print('Error called');
            emit(StudentsToAttendState.error(
                error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('Success called');
          emit(StudentsToAttendState.fetchStudentsSubmit(
              studentTosubmit: success));
        });
      } catch (e) {
        print('Error called');
        emit(StudentsToAttendState.error(error: 'An error occurred: $e'));
      }
    });
  
  
  }
}
