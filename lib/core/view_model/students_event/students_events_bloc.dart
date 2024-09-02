import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/events/event_models.dart';
import 'package:puppil/core/service/student/events/events_servcie.dart';

part 'students_events_event.dart';
part 'students_events_state.dart';
part 'students_events_bloc.freezed.dart';

class StudentsEventsBloc extends Bloc<StudentsEventsEvent, StudentsEventsState> {
    final EventsService eventsService;
  StudentsEventsBloc({required this.eventsService}) : super(_Initial()) {
     on<_FetchStudentsEventEvent>((event, emit) async {
      emit(const StudentsEventsState.loading());

      try {
        print('Bloc called');
        final result = await eventsService.getEventsForStudnet();

        await result.fold((failure) async {
          if (failure == 0) {
            print('Internet called');
            emit(const StudentsEventsState.noInternet());
          } else {
            print('Error called');
            emit(StudentsEventsState.error(
                error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('Success called');
          emit(StudentsEventsState.fetchStudentsEvent(
              studentTosubmit: success));
        });
      } catch (e) {
        print('Error called');
        emit(StudentsEventsState.error(error: 'An error occurred: $e'));
      }
    });
  
  
  }
}
