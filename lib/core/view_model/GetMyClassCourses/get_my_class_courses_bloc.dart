import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/courses/courses_model.dart';
import 'package:puppil/core/service/teacher/course/course_servcies.dart';

part 'get_my_class_courses_event.dart';
part 'get_my_class_courses_state.dart';
part 'get_my_class_courses_bloc.freezed.dart';

class GetMyClassCoursesBloc extends Bloc<GetMyClassCoursesEvent, GetMyClassCoursesState> {
    final CourseServcies courseServcies;
  GetMyClassCoursesBloc({required this.courseServcies}) : super(const _Initial()) {
    on<_FetchGMyClassCoursesEvent>((event, emit) async {
      emit(const GetMyClassCoursesState.loading());

      try {
        print('Bloc called');
        final result = await courseServcies.fetchMyCourses("D");

        await result.fold((failure) async {
          if (failure == 0) {
            print('Internet called');
            emit(const GetMyClassCoursesState.noInternet());
          } else {
            print('Error called');
            emit(GetMyClassCoursesState.error(
                error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('Success called');
          emit(GetMyClassCoursesState.fetchMyClassCourses(rolemodel: success));
        });
      } catch (e) {
        print('Error called');
        emit(GetMyClassCoursesState.error(error: 'An error occurred: $e'));
      }
    });
  }
}
