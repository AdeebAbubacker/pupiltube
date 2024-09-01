import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/service/auth/auth_service.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthService authService;
  LoginBloc(this.authService) : super(const LoginState.initial()) {
    on<_LoginRequested>((event, emit) async {
      emit(const LoginState.loading());

      try {
        final result = await authService.login(
          email: event.email,
          password: event.password,
        );

        await result.fold((failure) async {
          emit(LoginState.loginFailure(error: failure.toString()));
        }, (success) async {
          // var accessToken = await SetSharedPreferences.storeAccessToken(
          //         success.misc.accessToken) ??
          //     'Access Token empty';
          emit(LoginState.loginSuccess(role: success!));
        });
      } catch (e) {
        emit(LoginState.loginFailure(error: 'An error occurred: $e'));
      }
    });

    on<_LogoutRequested>((event, emit) async {
      emit(const LoginState.loading());

      try {
        final result = await authService.logout();

        await result.fold((failure) async {
          emit(const LoginState.logoutFailure(status: false));
        }, (success) async {
          // var accessToken = await SetSharedPreferences.storeAccessToken(
          //         success.misc.accessToken) ??
          //     'Access Token empty';
          emit(LoginState.logoutSuccess(status: success));
        });
      } catch (e) {
        emit(const LoginState.logoutFailure(status: false));
      }
    });
  }
}
