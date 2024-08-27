import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';

part 'assesment_event.dart';
part 'assesment_state.dart';
part 'assesment_bloc.freezed.dart';

class AssesmentBloc extends Bloc<AssesmentEvent, AssesmentState> {
  final AssesmentService assesmentService;
  AssesmentBloc({required this.assesmentService}) : super(_Initial()) {
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
  }
}
