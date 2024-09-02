part of 'get_my_class_courses_bloc.dart';

@freezed
class GetMyClassCoursesEvent with _$GetMyClassCoursesEvent {
  const factory GetMyClassCoursesEvent.started() = _Started;
  const factory GetMyClassCoursesEvent.fetchGMyClassCourses() =
      _FetchGMyClassCoursesEvent;
}
