import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';
import 'package:puppil/core/service/student/assesment/assesment_service.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';

part 'assesment_event.dart';
part 'assesment_state.dart';
part 'assesment_bloc.freezed.dart';

class AssesmentBloc extends Bloc<AssesmentEvent, AssesmentState> {
  final AssesmentService assesmentService;
  final AssesmentStudentService assesmentStudentService;
  AssesmentBloc({
    required this.assesmentService,
    required this.assesmentStudentService,
  }) : super(const _Initial()) {
    on<_CreateAssessment>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result = await assesmentService.createAssessment(
          title: event.title,
        );

        await result.fold((failure) async {
          if (failure == 0) {
            emit(const AssesmentState.noInternet());
          } else {
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          emit(AssesmentState.createdAssesment(assesment: success));
        });
      } catch (e) {
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_FetchAssesmentEvent>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result = await assesmentService.fetchAssessments();

        await result.fold((failure) async {
          if (failure == 0) {
            emit(const AssesmentState.noInternet());
          } else {
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          emit(AssesmentState.fetchAssesment(assesment: success));
        });
      } catch (e) {
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_FetchAssesmentByIdEvent>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result = await assesmentService.fetchAssessmentById(event.id);

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const AssesmentState.noInternet());
          } else {
            print('An error');
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(AssesmentState.fetchAssesmentBtId(assesment: success));
        });
      } catch (e) {
        print('An error');
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_FetchAssesmentForMyClassEvent>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result =
            await assesmentStudentService.fetchClassIdForStudent(event.id);

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const AssesmentState.noInternet());
          } else {
            print('An error');
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(AssesmentState.fetchAssesmentForMyClass(assesment: success));
        });
      } catch (e) {
        print('An error');
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_FetchAssesmentToDo>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result = await assesmentStudentService.getAssessmentsToDoForUser(
            uid: event.id);

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const AssesmentState.noInternet());
          } else {
            print('An error');
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(AssesmentState.fetchAssesmentTodo(assesment: success));
        });
      } catch (e) {
        print('An error');
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_FetchAssesmentOverDue>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result = await assesmentStudentService
            .getOverdueAssessmentsForUser(uid: event.id);

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const AssesmentState.noInternet());
          } else {
            print('An error');
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(AssesmentState.fetchAssesmentOverDue(assesment: success));
        });
      } catch (e) {
        print('An error');
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_FetchAssesmentCompleted>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result = await assesmentStudentService.getCompletedAssessments(
            uid: event!.id);

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const AssesmentState.noInternet());
          } else {
            print('An error');
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(AssesmentState.fetchAssesmentCompleted(assesment: success));
        });
      } catch (e) {
        print('An error');
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_ImportQuestionBankEvent>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result = await assesmentService.importFromQuestionBank(
          assessmentId: event.assesmentId,
          newQuestions: event.question,
        );

        await result.fold((failure) async {
          if (failure == 0) {
            emit(const AssesmentState.noInternet());
          } else {
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          emit(AssesmentState.importQuestionBankSuccess(success: success));
        });
      } catch (e) {
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_FetchAssesmentForMyClassAsTeacher>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result =
            await assesmentService.fetchAssessmentsForMyClassAsTeacher();

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const AssesmentState.noInternet());
          } else {
            print('An error');
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(AssesmentState.fetchAssesmentForMyClassAsTeacher(
              assesment: success));
        });
      } catch (e) {
        print('An error ${e.toString()}');
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
    on<_FetchOngoingAssesmentAsTeacher>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result =
            await assesmentService.fetchOngoingAssessmentsAsTeacher();

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const AssesmentState.noInternet());
          } else {
            print('An error');
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(AssesmentState.fetchOngoingAssesmentAsTeacher(
              assesment: success));
        });
      } catch (e) {
        print('An error');
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });

    on<_FetchdraftAssement>((event, emit) async {
      emit(const AssesmentState.loading());

      try {
        final result = await assesmentService.fetchDraftAssessments();

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const AssesmentState.noInternet());
          } else {
            print('An error');
            emit(AssesmentState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(AssesmentState.fetchdraftAssesment(assesment: success));
        });
      } catch (e) {
        print('An error');
        emit(AssesmentState.error(error: 'An error occurred: $e'));
      }
    });
  }
}
