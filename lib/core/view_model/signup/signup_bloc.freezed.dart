// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email, int role,
            String? classId, String password)
        signupRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, int role, String? classId,
            String password)?
        signupRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, int role, String? classId,
            String password)?
        signupRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignupEventRequested value) signupRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignupEventRequested value)? signupRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignupEventRequested value)? signupRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SignupEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email, int role,
            String? classId, String password)
        signupRequested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, int role, String? classId,
            String password)?
        signupRequested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, int role, String? classId,
            String password)?
        signupRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignupEventRequested value) signupRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignupEventRequested value)? signupRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignupEventRequested value)? signupRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignupEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SignupEventRequestedImplCopyWith<$Res> {
  factory _$$SignupEventRequestedImplCopyWith(_$SignupEventRequestedImpl value,
          $Res Function(_$SignupEventRequestedImpl) then) =
      __$$SignupEventRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name, String email, int role, String? classId, String password});
}

/// @nodoc
class __$$SignupEventRequestedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$SignupEventRequestedImpl>
    implements _$$SignupEventRequestedImplCopyWith<$Res> {
  __$$SignupEventRequestedImplCopyWithImpl(_$SignupEventRequestedImpl _value,
      $Res Function(_$SignupEventRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? classId = freezed,
    Object? password = null,
  }) {
    return _then(_$SignupEventRequestedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupEventRequestedImpl implements _SignupEventRequested {
  const _$SignupEventRequestedImpl(
      {required this.name,
      required this.email,
      required this.role,
      this.classId,
      required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final int role;
  @override
  final String? classId;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupEvent.signupRequested(name: $name, email: $email, role: $role, classId: $classId, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupEventRequestedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, role, classId, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupEventRequestedImplCopyWith<_$SignupEventRequestedImpl>
      get copyWith =>
          __$$SignupEventRequestedImplCopyWithImpl<_$SignupEventRequestedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email, int role,
            String? classId, String password)
        signupRequested,
  }) {
    return signupRequested(name, email, role, classId, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, int role, String? classId,
            String password)?
        signupRequested,
  }) {
    return signupRequested?.call(name, email, role, classId, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, int role, String? classId,
            String password)?
        signupRequested,
    required TResult orElse(),
  }) {
    if (signupRequested != null) {
      return signupRequested(name, email, role, classId, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SignupEventRequested value) signupRequested,
  }) {
    return signupRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SignupEventRequested value)? signupRequested,
  }) {
    return signupRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SignupEventRequested value)? signupRequested,
    required TResult orElse(),
  }) {
    if (signupRequested != null) {
      return signupRequested(this);
    }
    return orElse();
  }
}

abstract class _SignupEventRequested implements SignupEvent {
  const factory _SignupEventRequested(
      {required final String name,
      required final String email,
      required final int role,
      final String? classId,
      required final String password}) = _$SignupEventRequestedImpl;

  String get name;
  String get email;
  int get role;
  String? get classId;
  String get password;
  @JsonKey(ignore: true)
  _$$SignupEventRequestedImplCopyWith<_$SignupEventRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int role) signupSuccess,
    required TResult Function(bool status) signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int role)? signupSuccess,
    TResult? Function(bool status)? signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int role)? signupSuccess,
    TResult Function(bool status)? signupFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_SignupFailure value) signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_SignupFailure value)? signupFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int role) signupSuccess,
    required TResult Function(bool status) signupFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int role)? signupSuccess,
    TResult? Function(bool status)? signupFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int role)? signupSuccess,
    TResult Function(bool status)? signupFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_SignupFailure value) signupFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_SignupFailure value)? signupFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignupState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SignupState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int role) signupSuccess,
    required TResult Function(bool status) signupFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int role)? signupSuccess,
    TResult? Function(bool status)? signupFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int role)? signupSuccess,
    TResult Function(bool status)? signupFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_SignupFailure value) signupFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_SignupFailure value)? signupFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignupState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SignupSuccessImplCopyWith<$Res> {
  factory _$$SignupSuccessImplCopyWith(
          _$SignupSuccessImpl value, $Res Function(_$SignupSuccessImpl) then) =
      __$$SignupSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int role});
}

/// @nodoc
class __$$SignupSuccessImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupSuccessImpl>
    implements _$$SignupSuccessImplCopyWith<$Res> {
  __$$SignupSuccessImplCopyWithImpl(
      _$SignupSuccessImpl _value, $Res Function(_$SignupSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$SignupSuccessImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SignupSuccessImpl implements _SignupSuccess {
  const _$SignupSuccessImpl({required this.role});

  @override
  final int role;

  @override
  String toString() {
    return 'SignupState.signupSuccess(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSuccessImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      __$$SignupSuccessImplCopyWithImpl<_$SignupSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int role) signupSuccess,
    required TResult Function(bool status) signupFailure,
  }) {
    return signupSuccess(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int role)? signupSuccess,
    TResult? Function(bool status)? signupFailure,
  }) {
    return signupSuccess?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int role)? signupSuccess,
    TResult Function(bool status)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_SignupFailure value) signupFailure,
  }) {
    return signupSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_SignupFailure value)? signupFailure,
  }) {
    return signupSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupSuccess != null) {
      return signupSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignupSuccess implements SignupState {
  const factory _SignupSuccess({required final int role}) = _$SignupSuccessImpl;

  int get role;
  @JsonKey(ignore: true)
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupFailureImplCopyWith<$Res> {
  factory _$$SignupFailureImplCopyWith(
          _$SignupFailureImpl value, $Res Function(_$SignupFailureImpl) then) =
      __$$SignupFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$SignupFailureImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupFailureImpl>
    implements _$$SignupFailureImplCopyWith<$Res> {
  __$$SignupFailureImplCopyWithImpl(
      _$SignupFailureImpl _value, $Res Function(_$SignupFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$SignupFailureImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignupFailureImpl implements _SignupFailure {
  const _$SignupFailureImpl({required this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'SignupState.signupFailure(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFailureImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFailureImplCopyWith<_$SignupFailureImpl> get copyWith =>
      __$$SignupFailureImplCopyWithImpl<_$SignupFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int role) signupSuccess,
    required TResult Function(bool status) signupFailure,
  }) {
    return signupFailure(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int role)? signupSuccess,
    TResult? Function(bool status)? signupFailure,
  }) {
    return signupFailure?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int role)? signupSuccess,
    TResult Function(bool status)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupFailure != null) {
      return signupFailure(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignupSuccess value) signupSuccess,
    required TResult Function(_SignupFailure value) signupFailure,
  }) {
    return signupFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignupSuccess value)? signupSuccess,
    TResult? Function(_SignupFailure value)? signupFailure,
  }) {
    return signupFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignupSuccess value)? signupSuccess,
    TResult Function(_SignupFailure value)? signupFailure,
    required TResult orElse(),
  }) {
    if (signupFailure != null) {
      return signupFailure(this);
    }
    return orElse();
  }
}

abstract class _SignupFailure implements SignupState {
  const factory _SignupFailure({required final bool status}) =
      _$SignupFailureImpl;

  bool get status;
  @JsonKey(ignore: true)
  _$$SignupFailureImplCopyWith<_$SignupFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
