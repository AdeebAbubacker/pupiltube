part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.started() = _Started;
  const factory SignupEvent.signupRequested({
    required String name,
    required String email,
    required int role,
    String? classId,
    required String password,
  }) = _SignupEventRequested;
}

//  name: '',
//           role: 1,
//           classId: 'w',
//           email: event.email,
//           password: event.password,