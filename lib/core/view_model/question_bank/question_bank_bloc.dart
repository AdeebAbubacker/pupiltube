import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';

part 'question_bank_event.dart';
part 'question_bank_state.dart';
part 'question_bank_bloc.freezed.dart';

class QuestionBankBloc extends Bloc<QuestionBankEvent, QuestionBankState> {
  final QuestionBankService questionBankService;
  QuestionBankBloc({required this.questionBankService}) : super(_Initial()) {
    on<_FetchAllQuestionBankEvent>((event, emit) async {
      emit(const QuestionBankState.loading());

      try {
        print('Bloc called');
        final result = await questionBankService.featchALlQuestionBank();

        await result.fold((failure) async {
          if (failure == 0) {
                print('Internet called');
            emit(const QuestionBankState.noInternet());
          } else {
                  print('Error called');
            emit(QuestionBankState.error(error: 'An error occurred: $failure'));
          }
        }, (success) async {
            print('Success called');
          emit(QuestionBankState.fetchAllQuestionBank(assesment: success));
        });
     
      } catch (e) {
            print('Error called');
        emit(QuestionBankState.error(error: 'An error occurred: $e'));
      }

  
    });
  }
}
