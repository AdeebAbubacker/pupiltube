import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_question_banks_event.dart';
part 'get_all_question_banks_state.dart';
part 'get_all_question_banks_bloc.freezed.dart';

class GetAllQuestionBanksBloc extends Bloc<GetAllQuestionBanksEvent, GetAllQuestionBanksState> {
  GetAllQuestionBanksBloc() : super(_Initial()) {
    on<GetAllQuestionBanksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
