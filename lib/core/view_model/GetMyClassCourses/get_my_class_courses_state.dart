part of 'get_my_class_courses_bloc.dart';

@freezed
class GetMyClassCoursesState with _$GetMyClassCoursesState {
  const factory GetMyClassCoursesState.initial() = _Initial;
  const factory GetMyClassCoursesState.loading() = _Loading;
  const factory GetMyClassCoursesState.noInternet() = _NoInternet;
  const factory GetMyClassCoursesState.error({required String error}) =
      _GetUserDataByRolesFailure;
  const factory GetMyClassCoursesState.fetchMyClassCourses(
      {required CoursesModel rolemodel}) = _FetchMyclassCoursesState;
}
