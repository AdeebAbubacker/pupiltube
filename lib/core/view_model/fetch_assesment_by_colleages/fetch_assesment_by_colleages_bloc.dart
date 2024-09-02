import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';
part 'fetch_assesment_by_colleages_event.dart';
part 'fetch_assesment_by_colleages_state.dart';
part 'fetch_assesment_by_colleages_bloc.freezed.dart';

class FetchAssesmentByColleagesBloc extends Bloc<FetchAssesmentByColleagesEvent,
    FetchAssesmentByColleagesState> {
  final AssesmentService assesmentService;
  FetchAssesmentByColleagesBloc({required this.assesmentService})
      : super(_Initial()) {
    on<_FetchAssesmentbycolleagesEvent>((event, emit) async {
      emit(const FetchAssesmentByColleagesState.loading());

      try {
        final result = await assesmentService.fetchAssessments();

        await result.fold((failure) async {
          if (failure == 0) {
            print('No internt');
            emit(const FetchAssesmentByColleagesState.noInternet());
          } else {
            print('An error');
            emit(FetchAssesmentByColleagesState.error(
                error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('An success');
          emit(FetchAssesmentByColleagesState.fetchAssesmentByColleage(
              assesment: success));
        });
      } catch (e) {
        print('An error');
        emit(FetchAssesmentByColleagesState.error(
            error: 'An error occurred: $e'));
      }
    });
  }
}
