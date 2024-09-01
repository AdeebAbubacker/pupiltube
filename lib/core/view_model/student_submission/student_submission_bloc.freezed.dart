// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_submission_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentSubmissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAllSubmissionByAssesmentId,
    required TResult Function() fetchStudentToSubmitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAllSubmissionByAssesmentId,
    TResult? Function()? fetchStudentToSubmitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAllSubmissionByAssesmentId,
    TResult Function()? fetchStudentToSubmitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchAllSubmissionByAssesmentId value)
        fetchAllSubmissionByAssesmentId,
    required TResult Function(_FetchStudentToSubmitEvent value)
        fetchStudentToSubmitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAllSubmissionByAssesmentId value)?
        fetchAllSubmissionByAssesmentId,
    TResult? Function(_FetchStudentToSubmitEvent value)?
        fetchStudentToSubmitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAllSubmissionByAssesmentId value)?
        fetchAllSubmissionByAssesmentId,
    TResult Function(_FetchStudentToSubmitEvent value)?
        fetchStudentToSubmitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSubmissionEventCopyWith<$Res> {
  factory $StudentSubmissionEventCopyWith(StudentSubmissionEvent value,
          $Res Function(StudentSubmissionEvent) then) =
      _$StudentSubmissionEventCopyWithImpl<$Res, StudentSubmissionEvent>;
}

/// @nodoc
class _$StudentSubmissionEventCopyWithImpl<$Res,
        $Val extends StudentSubmissionEvent>
    implements $StudentSubmissionEventCopyWith<$Res> {
  _$StudentSubmissionEventCopyWithImpl(this._value, this._then);

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
    extends _$StudentSubmissionEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'StudentSubmissionEvent.started()';
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
    required TResult Function() fetchAllSubmissionByAssesmentId,
    required TResult Function() fetchStudentToSubmitEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAllSubmissionByAssesmentId,
    TResult? Function()? fetchStudentToSubmitEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAllSubmissionByAssesmentId,
    TResult Function()? fetchStudentToSubmitEvent,
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
    required TResult Function(_FetchAllSubmissionByAssesmentId value)
        fetchAllSubmissionByAssesmentId,
    required TResult Function(_FetchStudentToSubmitEvent value)
        fetchStudentToSubmitEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAllSubmissionByAssesmentId value)?
        fetchAllSubmissionByAssesmentId,
    TResult? Function(_FetchStudentToSubmitEvent value)?
        fetchStudentToSubmitEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAllSubmissionByAssesmentId value)?
        fetchAllSubmissionByAssesmentId,
    TResult Function(_FetchStudentToSubmitEvent value)?
        fetchStudentToSubmitEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StudentSubmissionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchAllSubmissionByAssesmentIdImplCopyWith<$Res> {
  factory _$$FetchAllSubmissionByAssesmentIdImplCopyWith(
          _$FetchAllSubmissionByAssesmentIdImpl value,
          $Res Function(_$FetchAllSubmissionByAssesmentIdImpl) then) =
      __$$FetchAllSubmissionByAssesmentIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllSubmissionByAssesmentIdImplCopyWithImpl<$Res>
    extends _$StudentSubmissionEventCopyWithImpl<$Res,
        _$FetchAllSubmissionByAssesmentIdImpl>
    implements _$$FetchAllSubmissionByAssesmentIdImplCopyWith<$Res> {
  __$$FetchAllSubmissionByAssesmentIdImplCopyWithImpl(
      _$FetchAllSubmissionByAssesmentIdImpl _value,
      $Res Function(_$FetchAllSubmissionByAssesmentIdImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllSubmissionByAssesmentIdImpl
    implements _FetchAllSubmissionByAssesmentId {
  const _$FetchAllSubmissionByAssesmentIdImpl();

  @override
  String toString() {
    return 'StudentSubmissionEvent.fetchAllSubmissionByAssesmentId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllSubmissionByAssesmentIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAllSubmissionByAssesmentId,
    required TResult Function() fetchStudentToSubmitEvent,
  }) {
    return fetchAllSubmissionByAssesmentId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAllSubmissionByAssesmentId,
    TResult? Function()? fetchStudentToSubmitEvent,
  }) {
    return fetchAllSubmissionByAssesmentId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAllSubmissionByAssesmentId,
    TResult Function()? fetchStudentToSubmitEvent,
    required TResult orElse(),
  }) {
    if (fetchAllSubmissionByAssesmentId != null) {
      return fetchAllSubmissionByAssesmentId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchAllSubmissionByAssesmentId value)
        fetchAllSubmissionByAssesmentId,
    required TResult Function(_FetchStudentToSubmitEvent value)
        fetchStudentToSubmitEvent,
  }) {
    return fetchAllSubmissionByAssesmentId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAllSubmissionByAssesmentId value)?
        fetchAllSubmissionByAssesmentId,
    TResult? Function(_FetchStudentToSubmitEvent value)?
        fetchStudentToSubmitEvent,
  }) {
    return fetchAllSubmissionByAssesmentId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAllSubmissionByAssesmentId value)?
        fetchAllSubmissionByAssesmentId,
    TResult Function(_FetchStudentToSubmitEvent value)?
        fetchStudentToSubmitEvent,
    required TResult orElse(),
  }) {
    if (fetchAllSubmissionByAssesmentId != null) {
      return fetchAllSubmissionByAssesmentId(this);
    }
    return orElse();
  }
}

abstract class _FetchAllSubmissionByAssesmentId
    implements StudentSubmissionEvent {
  const factory _FetchAllSubmissionByAssesmentId() =
      _$FetchAllSubmissionByAssesmentIdImpl;
}

/// @nodoc
abstract class _$$FetchStudentToSubmitEventImplCopyWith<$Res> {
  factory _$$FetchStudentToSubmitEventImplCopyWith(
          _$FetchStudentToSubmitEventImpl value,
          $Res Function(_$FetchStudentToSubmitEventImpl) then) =
      __$$FetchStudentToSubmitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchStudentToSubmitEventImplCopyWithImpl<$Res>
    extends _$StudentSubmissionEventCopyWithImpl<$Res,
        _$FetchStudentToSubmitEventImpl>
    implements _$$FetchStudentToSubmitEventImplCopyWith<$Res> {
  __$$FetchStudentToSubmitEventImplCopyWithImpl(
      _$FetchStudentToSubmitEventImpl _value,
      $Res Function(_$FetchStudentToSubmitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchStudentToSubmitEventImpl implements _FetchStudentToSubmitEvent {
  const _$FetchStudentToSubmitEventImpl();

  @override
  String toString() {
    return 'StudentSubmissionEvent.fetchStudentToSubmitEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStudentToSubmitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAllSubmissionByAssesmentId,
    required TResult Function() fetchStudentToSubmitEvent,
  }) {
    return fetchStudentToSubmitEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAllSubmissionByAssesmentId,
    TResult? Function()? fetchStudentToSubmitEvent,
  }) {
    return fetchStudentToSubmitEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAllSubmissionByAssesmentId,
    TResult Function()? fetchStudentToSubmitEvent,
    required TResult orElse(),
  }) {
    if (fetchStudentToSubmitEvent != null) {
      return fetchStudentToSubmitEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchAllSubmissionByAssesmentId value)
        fetchAllSubmissionByAssesmentId,
    required TResult Function(_FetchStudentToSubmitEvent value)
        fetchStudentToSubmitEvent,
  }) {
    return fetchStudentToSubmitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAllSubmissionByAssesmentId value)?
        fetchAllSubmissionByAssesmentId,
    TResult? Function(_FetchStudentToSubmitEvent value)?
        fetchStudentToSubmitEvent,
  }) {
    return fetchStudentToSubmitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAllSubmissionByAssesmentId value)?
        fetchAllSubmissionByAssesmentId,
    TResult Function(_FetchStudentToSubmitEvent value)?
        fetchStudentToSubmitEvent,
    required TResult orElse(),
  }) {
    if (fetchStudentToSubmitEvent != null) {
      return fetchStudentToSubmitEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchStudentToSubmitEvent implements StudentSubmissionEvent {
  const factory _FetchStudentToSubmitEvent() = _$FetchStudentToSubmitEventImpl;
}

/// @nodoc
mixin _$StudentSubmissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<SubmissionModel> assesment)
        fetchsubmissionByAssementId,
    required TResult Function(List<StudentToSubmit> studentToSubmit)
        fetchstudentsToSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult? Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentSubmissionStateFailure value) error,
    required TResult Function(_FetchsubmissionByAssementId value)
        fetchsubmissionByAssementId,
    required TResult Function(_FetchstudentsToSubmit value)
        fetchstudentsToSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentSubmissionStateFailure value)? error,
    TResult? Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult? Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentSubmissionStateFailure value)? error,
    TResult Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSubmissionStateCopyWith<$Res> {
  factory $StudentSubmissionStateCopyWith(StudentSubmissionState value,
          $Res Function(StudentSubmissionState) then) =
      _$StudentSubmissionStateCopyWithImpl<$Res, StudentSubmissionState>;
}

/// @nodoc
class _$StudentSubmissionStateCopyWithImpl<$Res,
        $Val extends StudentSubmissionState>
    implements $StudentSubmissionStateCopyWith<$Res> {
  _$StudentSubmissionStateCopyWithImpl(this._value, this._then);

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
    extends _$StudentSubmissionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StudentSubmissionState.initial()';
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
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<SubmissionModel> assesment)
        fetchsubmissionByAssementId,
    required TResult Function(List<StudentToSubmit> studentToSubmit)
        fetchstudentsToSubmit,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult? Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
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
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentSubmissionStateFailure value) error,
    required TResult Function(_FetchsubmissionByAssementId value)
        fetchsubmissionByAssementId,
    required TResult Function(_FetchstudentsToSubmit value)
        fetchstudentsToSubmit,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentSubmissionStateFailure value)? error,
    TResult? Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult? Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentSubmissionStateFailure value)? error,
    TResult Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StudentSubmissionState {
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
    extends _$StudentSubmissionStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'StudentSubmissionState.loading()';
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
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<SubmissionModel> assesment)
        fetchsubmissionByAssementId,
    required TResult Function(List<StudentToSubmit> studentToSubmit)
        fetchstudentsToSubmit,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult? Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
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
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentSubmissionStateFailure value) error,
    required TResult Function(_FetchsubmissionByAssementId value)
        fetchsubmissionByAssementId,
    required TResult Function(_FetchstudentsToSubmit value)
        fetchstudentsToSubmit,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentSubmissionStateFailure value)? error,
    TResult? Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult? Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentSubmissionStateFailure value)? error,
    TResult Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StudentSubmissionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$StudentSubmissionStateCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetImpl implements _NoInternet {
  const _$NoInternetImpl();

  @override
  String toString() {
    return 'StudentSubmissionState.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<SubmissionModel> assesment)
        fetchsubmissionByAssementId,
    required TResult Function(List<StudentToSubmit> studentToSubmit)
        fetchstudentsToSubmit,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult? Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentSubmissionStateFailure value) error,
    required TResult Function(_FetchsubmissionByAssementId value)
        fetchsubmissionByAssementId,
    required TResult Function(_FetchstudentsToSubmit value)
        fetchstudentsToSubmit,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentSubmissionStateFailure value)? error,
    TResult? Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult? Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentSubmissionStateFailure value)? error,
    TResult Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements StudentSubmissionState {
  const factory _NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$StudentSubmissionStateFailureImplCopyWith<$Res> {
  factory _$$StudentSubmissionStateFailureImplCopyWith(
          _$StudentSubmissionStateFailureImpl value,
          $Res Function(_$StudentSubmissionStateFailureImpl) then) =
      __$$StudentSubmissionStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StudentSubmissionStateFailureImplCopyWithImpl<$Res>
    extends _$StudentSubmissionStateCopyWithImpl<$Res,
        _$StudentSubmissionStateFailureImpl>
    implements _$$StudentSubmissionStateFailureImplCopyWith<$Res> {
  __$$StudentSubmissionStateFailureImplCopyWithImpl(
      _$StudentSubmissionStateFailureImpl _value,
      $Res Function(_$StudentSubmissionStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StudentSubmissionStateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentSubmissionStateFailureImpl
    implements _StudentSubmissionStateFailure {
  const _$StudentSubmissionStateFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'StudentSubmissionState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSubmissionStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSubmissionStateFailureImplCopyWith<
          _$StudentSubmissionStateFailureImpl>
      get copyWith => __$$StudentSubmissionStateFailureImplCopyWithImpl<
          _$StudentSubmissionStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<SubmissionModel> assesment)
        fetchsubmissionByAssementId,
    required TResult Function(List<StudentToSubmit> studentToSubmit)
        fetchstudentsToSubmit,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult? Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentSubmissionStateFailure value) error,
    required TResult Function(_FetchsubmissionByAssementId value)
        fetchsubmissionByAssementId,
    required TResult Function(_FetchstudentsToSubmit value)
        fetchstudentsToSubmit,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentSubmissionStateFailure value)? error,
    TResult? Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult? Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentSubmissionStateFailure value)? error,
    TResult Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StudentSubmissionStateFailure
    implements StudentSubmissionState {
  const factory _StudentSubmissionStateFailure({required final String error}) =
      _$StudentSubmissionStateFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StudentSubmissionStateFailureImplCopyWith<
          _$StudentSubmissionStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchsubmissionByAssementIdImplCopyWith<$Res> {
  factory _$$FetchsubmissionByAssementIdImplCopyWith(
          _$FetchsubmissionByAssementIdImpl value,
          $Res Function(_$FetchsubmissionByAssementIdImpl) then) =
      __$$FetchsubmissionByAssementIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SubmissionModel> assesment});
}

/// @nodoc
class __$$FetchsubmissionByAssementIdImplCopyWithImpl<$Res>
    extends _$StudentSubmissionStateCopyWithImpl<$Res,
        _$FetchsubmissionByAssementIdImpl>
    implements _$$FetchsubmissionByAssementIdImplCopyWith<$Res> {
  __$$FetchsubmissionByAssementIdImplCopyWithImpl(
      _$FetchsubmissionByAssementIdImpl _value,
      $Res Function(_$FetchsubmissionByAssementIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchsubmissionByAssementIdImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<SubmissionModel>,
    ));
  }
}

/// @nodoc

class _$FetchsubmissionByAssementIdImpl
    implements _FetchsubmissionByAssementId {
  const _$FetchsubmissionByAssementIdImpl(
      {required final List<SubmissionModel> assesment})
      : _assesment = assesment;

  final List<SubmissionModel> _assesment;
  @override
  List<SubmissionModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'StudentSubmissionState.fetchsubmissionByAssementId(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchsubmissionByAssementIdImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchsubmissionByAssementIdImplCopyWith<_$FetchsubmissionByAssementIdImpl>
      get copyWith => __$$FetchsubmissionByAssementIdImplCopyWithImpl<
          _$FetchsubmissionByAssementIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<SubmissionModel> assesment)
        fetchsubmissionByAssementId,
    required TResult Function(List<StudentToSubmit> studentToSubmit)
        fetchstudentsToSubmit,
  }) {
    return fetchsubmissionByAssementId(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult? Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
  }) {
    return fetchsubmissionByAssementId?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (fetchsubmissionByAssementId != null) {
      return fetchsubmissionByAssementId(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentSubmissionStateFailure value) error,
    required TResult Function(_FetchsubmissionByAssementId value)
        fetchsubmissionByAssementId,
    required TResult Function(_FetchstudentsToSubmit value)
        fetchstudentsToSubmit,
  }) {
    return fetchsubmissionByAssementId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentSubmissionStateFailure value)? error,
    TResult? Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult? Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
  }) {
    return fetchsubmissionByAssementId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentSubmissionStateFailure value)? error,
    TResult Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (fetchsubmissionByAssementId != null) {
      return fetchsubmissionByAssementId(this);
    }
    return orElse();
  }
}

abstract class _FetchsubmissionByAssementId implements StudentSubmissionState {
  const factory _FetchsubmissionByAssementId(
          {required final List<SubmissionModel> assesment}) =
      _$FetchsubmissionByAssementIdImpl;

  List<SubmissionModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchsubmissionByAssementIdImplCopyWith<_$FetchsubmissionByAssementIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchstudentsToSubmitImplCopyWith<$Res> {
  factory _$$FetchstudentsToSubmitImplCopyWith(
          _$FetchstudentsToSubmitImpl value,
          $Res Function(_$FetchstudentsToSubmitImpl) then) =
      __$$FetchstudentsToSubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StudentToSubmit> studentToSubmit});
}

/// @nodoc
class __$$FetchstudentsToSubmitImplCopyWithImpl<$Res>
    extends _$StudentSubmissionStateCopyWithImpl<$Res,
        _$FetchstudentsToSubmitImpl>
    implements _$$FetchstudentsToSubmitImplCopyWith<$Res> {
  __$$FetchstudentsToSubmitImplCopyWithImpl(_$FetchstudentsToSubmitImpl _value,
      $Res Function(_$FetchstudentsToSubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentToSubmit = null,
  }) {
    return _then(_$FetchstudentsToSubmitImpl(
      studentToSubmit: null == studentToSubmit
          ? _value._studentToSubmit
          : studentToSubmit // ignore: cast_nullable_to_non_nullable
              as List<StudentToSubmit>,
    ));
  }
}

/// @nodoc

class _$FetchstudentsToSubmitImpl implements _FetchstudentsToSubmit {
  const _$FetchstudentsToSubmitImpl(
      {required final List<StudentToSubmit> studentToSubmit})
      : _studentToSubmit = studentToSubmit;

  final List<StudentToSubmit> _studentToSubmit;
  @override
  List<StudentToSubmit> get studentToSubmit {
    if (_studentToSubmit is EqualUnmodifiableListView) return _studentToSubmit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentToSubmit);
  }

  @override
  String toString() {
    return 'StudentSubmissionState.fetchstudentsToSubmit(studentToSubmit: $studentToSubmit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchstudentsToSubmitImpl &&
            const DeepCollectionEquality()
                .equals(other._studentToSubmit, _studentToSubmit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_studentToSubmit));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchstudentsToSubmitImplCopyWith<_$FetchstudentsToSubmitImpl>
      get copyWith => __$$FetchstudentsToSubmitImplCopyWithImpl<
          _$FetchstudentsToSubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<SubmissionModel> assesment)
        fetchsubmissionByAssementId,
    required TResult Function(List<StudentToSubmit> studentToSubmit)
        fetchstudentsToSubmit,
  }) {
    return fetchstudentsToSubmit(studentToSubmit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult? Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
  }) {
    return fetchstudentsToSubmit?.call(studentToSubmit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<SubmissionModel> assesment)?
        fetchsubmissionByAssementId,
    TResult Function(List<StudentToSubmit> studentToSubmit)?
        fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (fetchstudentsToSubmit != null) {
      return fetchstudentsToSubmit(studentToSubmit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentSubmissionStateFailure value) error,
    required TResult Function(_FetchsubmissionByAssementId value)
        fetchsubmissionByAssementId,
    required TResult Function(_FetchstudentsToSubmit value)
        fetchstudentsToSubmit,
  }) {
    return fetchstudentsToSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentSubmissionStateFailure value)? error,
    TResult? Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult? Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
  }) {
    return fetchstudentsToSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentSubmissionStateFailure value)? error,
    TResult Function(_FetchsubmissionByAssementId value)?
        fetchsubmissionByAssementId,
    TResult Function(_FetchstudentsToSubmit value)? fetchstudentsToSubmit,
    required TResult orElse(),
  }) {
    if (fetchstudentsToSubmit != null) {
      return fetchstudentsToSubmit(this);
    }
    return orElse();
  }
}

abstract class _FetchstudentsToSubmit implements StudentSubmissionState {
  const factory _FetchstudentsToSubmit(
          {required final List<StudentToSubmit> studentToSubmit}) =
      _$FetchstudentsToSubmitImpl;

  List<StudentToSubmit> get studentToSubmit;
  @JsonKey(ignore: true)
  _$$FetchstudentsToSubmitImplCopyWith<_$FetchstudentsToSubmitImpl>
      get copyWith => throw _privateConstructorUsedError;
}
