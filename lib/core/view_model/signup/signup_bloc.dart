import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puppil/core/service/auth/auth_service.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthService authService;
  SignupBloc({required this.authService}) : super(_Initial()) {
    on<_SignupEventRequested>((event, emit) async {
      emit(const SignupState.loading());

      try {
        final result = await authService.signUpAndSaveUserData(
          name: event.name,
          role: event.role,
          classId: event.classId ?? null,
          email: event.email,
          password: event.password,
        );

        await result.fold((failure) async {
          emit(SignupState.signupFailure(status: false));
        }, (success) async {
          // var accessToken = await SetSharedPreferences.storeAccessToken(
          //         success.misc.accessToken) ??
          //     'Access Token empty';
          emit(SignupState.signupSuccess(role: success!));
        });
      } catch (e) {
        print(e.toString());
        emit(SignupState.signupFailure(status: false));
      }
    });
  }
}
