part of 'get_user_data_by_roles_bloc.dart';

@freezed
class GetUserDataByRolesEvent with _$GetUserDataByRolesEvent {
  const factory GetUserDataByRolesEvent.started() = _Started;
  const factory GetUserDataByRolesEvent.fetchGetUserDataByRoles() =
      _FetchGetUserDataByRolesEvent;
}
