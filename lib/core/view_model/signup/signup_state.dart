part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;
  const factory SignupState.signupSuccess({required int role}) = _SignupSuccess;
  const factory SignupState.signupFailure({required bool status}) =
      _SignupFailure;
}
