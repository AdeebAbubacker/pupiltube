import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/models/role/role_model.dart';
import 'package:puppil/core/service/admin/role_servcie/get_role_service.dart';

part 'get_user_data_by_roles_event.dart';
part 'get_user_data_by_roles_state.dart';
part 'get_user_data_by_roles_bloc.freezed.dart';

class GetUserDataByRolesBloc
    extends Bloc<GetUserDataByRolesEvent, GetUserDataByRolesState> {
  final GetRoleService getRoleService;
  GetUserDataByRolesBloc({required this.getRoleService}) : super(_Initial()) {
    on<_FetchGetUserDataByRolesEvent>((event, emit) async {
      emit(const GetUserDataByRolesState.loading());

      try {
        print('Bloc called');
        final result = await getRoleService.fetchClassIdForStudent();

        await result.fold((failure) async {
          if (failure == 0) {
            print('Internet called');
            emit(const GetUserDataByRolesState.noInternet());
          } else {
            print('Error called');
            emit(GetUserDataByRolesState.error(
                error: 'An error occurred: $failure'));
          }
        }, (success) async {
          print('Success called');
          emit(GetUserDataByRolesState.getuserdatabyRoles(rolemodel: success));
        });
      } catch (e) {
        print('Error called');
        emit(GetUserDataByRolesState.error(error: 'An error occurred: $e'));
      }
    });
  }
}
