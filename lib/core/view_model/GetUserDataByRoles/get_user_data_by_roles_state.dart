part of 'get_user_data_by_roles_bloc.dart';

@freezed
class GetUserDataByRolesState with _$GetUserDataByRolesState {
  const factory GetUserDataByRolesState.initial() = _Initial;
  const factory GetUserDataByRolesState.loading() = _Loading;
  const factory GetUserDataByRolesState.noInternet() = _NoInternet;
   const factory GetUserDataByRolesState.error({required String error}) =
      _GetUserDataByRolesFailure;
  const factory GetUserDataByRolesState.getuserdatabyRoles(
      {required List<RoleSModel> rolemodel}) = _GetuserdatabyRoles;
}
