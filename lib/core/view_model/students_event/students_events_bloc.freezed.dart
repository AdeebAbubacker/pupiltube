// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'students_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentsEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchStudentsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchStudentsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchStudentsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchStudentsEventEvent value)
        fetchStudentsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchStudentsEventEvent value)? fetchStudentsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchStudentsEventEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentsEventsEventCopyWith<$Res> {
  factory $StudentsEventsEventCopyWith(
          StudentsEventsEvent value, $Res Function(StudentsEventsEvent) then) =
      _$StudentsEventsEventCopyWithImpl<$Res, StudentsEventsEvent>;
}

/// @nodoc
class _$StudentsEventsEventCopyWithImpl<$Res, $Val extends StudentsEventsEvent>
    implements $StudentsEventsEventCopyWith<$Res> {
  _$StudentsEventsEventCopyWithImpl(this._value, this._then);

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
    extends _$StudentsEventsEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'StudentsEventsEvent.started()';
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
    required TResult Function() fetchStudentsEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchStudentsEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchStudentsEvent,
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
    required TResult Function(_FetchStudentsEventEvent value)
        fetchStudentsEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchStudentsEventEvent value)? fetchStudentsEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchStudentsEventEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StudentsEventsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchStudentsEventEventImplCopyWith<$Res> {
  factory _$$FetchStudentsEventEventImplCopyWith(
          _$FetchStudentsEventEventImpl value,
          $Res Function(_$FetchStudentsEventEventImpl) then) =
      __$$FetchStudentsEventEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchStudentsEventEventImplCopyWithImpl<$Res>
    extends _$StudentsEventsEventCopyWithImpl<$Res,
        _$FetchStudentsEventEventImpl>
    implements _$$FetchStudentsEventEventImplCopyWith<$Res> {
  __$$FetchStudentsEventEventImplCopyWithImpl(
      _$FetchStudentsEventEventImpl _value,
      $Res Function(_$FetchStudentsEventEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchStudentsEventEventImpl implements _FetchStudentsEventEvent {
  const _$FetchStudentsEventEventImpl();

  @override
  String toString() {
    return 'StudentsEventsEvent.fetchStudentsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStudentsEventEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchStudentsEvent,
  }) {
    return fetchStudentsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchStudentsEvent,
  }) {
    return fetchStudentsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (fetchStudentsEvent != null) {
      return fetchStudentsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchStudentsEventEvent value)
        fetchStudentsEvent,
  }) {
    return fetchStudentsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchStudentsEventEvent value)? fetchStudentsEvent,
  }) {
    return fetchStudentsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchStudentsEventEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (fetchStudentsEvent != null) {
      return fetchStudentsEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchStudentsEventEvent implements StudentsEventsEvent {
  const factory _FetchStudentsEventEvent() = _$FetchStudentsEventEventImpl;
}

/// @nodoc
mixin _$StudentsEventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<EventModel> studentTosubmit)
        fetchStudentsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentsEventsStateFailure value) error,
    required TResult Function(_FetchStudentsEvent value) fetchStudentsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentsEventsStateFailure value)? error,
    TResult? Function(_FetchStudentsEvent value)? fetchStudentsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentsEventsStateFailure value)? error,
    TResult Function(_FetchStudentsEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentsEventsStateCopyWith<$Res> {
  factory $StudentsEventsStateCopyWith(
          StudentsEventsState value, $Res Function(StudentsEventsState) then) =
      _$StudentsEventsStateCopyWithImpl<$Res, StudentsEventsState>;
}

/// @nodoc
class _$StudentsEventsStateCopyWithImpl<$Res, $Val extends StudentsEventsState>
    implements $StudentsEventsStateCopyWith<$Res> {
  _$StudentsEventsStateCopyWithImpl(this._value, this._then);

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
    extends _$StudentsEventsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StudentsEventsState.initial()';
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
    required TResult Function(List<EventModel> studentTosubmit)
        fetchStudentsEvent,
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
    TResult? Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
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
    TResult Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
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
    required TResult Function(_StudentsEventsStateFailure value) error,
    required TResult Function(_FetchStudentsEvent value) fetchStudentsEvent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentsEventsStateFailure value)? error,
    TResult? Function(_FetchStudentsEvent value)? fetchStudentsEvent,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentsEventsStateFailure value)? error,
    TResult Function(_FetchStudentsEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StudentsEventsState {
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
    extends _$StudentsEventsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'StudentsEventsState.loading()';
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
    required TResult Function(List<EventModel> studentTosubmit)
        fetchStudentsEvent,
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
    TResult? Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
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
    TResult Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
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
    required TResult Function(_StudentsEventsStateFailure value) error,
    required TResult Function(_FetchStudentsEvent value) fetchStudentsEvent,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentsEventsStateFailure value)? error,
    TResult? Function(_FetchStudentsEvent value)? fetchStudentsEvent,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentsEventsStateFailure value)? error,
    TResult Function(_FetchStudentsEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StudentsEventsState {
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
    extends _$StudentsEventsStateCopyWithImpl<$Res, _$NoInternetImpl>
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
    return 'StudentsEventsState.noInternet()';
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
    required TResult Function(List<EventModel> studentTosubmit)
        fetchStudentsEvent,
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
    TResult? Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
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
    TResult Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
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
    required TResult Function(_StudentsEventsStateFailure value) error,
    required TResult Function(_FetchStudentsEvent value) fetchStudentsEvent,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentsEventsStateFailure value)? error,
    TResult? Function(_FetchStudentsEvent value)? fetchStudentsEvent,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentsEventsStateFailure value)? error,
    TResult Function(_FetchStudentsEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements StudentsEventsState {
  const factory _NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$StudentsEventsStateFailureImplCopyWith<$Res> {
  factory _$$StudentsEventsStateFailureImplCopyWith(
          _$StudentsEventsStateFailureImpl value,
          $Res Function(_$StudentsEventsStateFailureImpl) then) =
      __$$StudentsEventsStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StudentsEventsStateFailureImplCopyWithImpl<$Res>
    extends _$StudentsEventsStateCopyWithImpl<$Res,
        _$StudentsEventsStateFailureImpl>
    implements _$$StudentsEventsStateFailureImplCopyWith<$Res> {
  __$$StudentsEventsStateFailureImplCopyWithImpl(
      _$StudentsEventsStateFailureImpl _value,
      $Res Function(_$StudentsEventsStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StudentsEventsStateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentsEventsStateFailureImpl implements _StudentsEventsStateFailure {
  const _$StudentsEventsStateFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'StudentsEventsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentsEventsStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentsEventsStateFailureImplCopyWith<_$StudentsEventsStateFailureImpl>
      get copyWith => __$$StudentsEventsStateFailureImplCopyWithImpl<
          _$StudentsEventsStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<EventModel> studentTosubmit)
        fetchStudentsEvent,
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
    TResult? Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
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
    TResult Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
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
    required TResult Function(_StudentsEventsStateFailure value) error,
    required TResult Function(_FetchStudentsEvent value) fetchStudentsEvent,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentsEventsStateFailure value)? error,
    TResult? Function(_FetchStudentsEvent value)? fetchStudentsEvent,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentsEventsStateFailure value)? error,
    TResult Function(_FetchStudentsEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StudentsEventsStateFailure implements StudentsEventsState {
  const factory _StudentsEventsStateFailure({required final String error}) =
      _$StudentsEventsStateFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StudentsEventsStateFailureImplCopyWith<_$StudentsEventsStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchStudentsEventImplCopyWith<$Res> {
  factory _$$FetchStudentsEventImplCopyWith(_$FetchStudentsEventImpl value,
          $Res Function(_$FetchStudentsEventImpl) then) =
      __$$FetchStudentsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EventModel> studentTosubmit});
}

/// @nodoc
class __$$FetchStudentsEventImplCopyWithImpl<$Res>
    extends _$StudentsEventsStateCopyWithImpl<$Res, _$FetchStudentsEventImpl>
    implements _$$FetchStudentsEventImplCopyWith<$Res> {
  __$$FetchStudentsEventImplCopyWithImpl(_$FetchStudentsEventImpl _value,
      $Res Function(_$FetchStudentsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentTosubmit = null,
  }) {
    return _then(_$FetchStudentsEventImpl(
      studentTosubmit: null == studentTosubmit
          ? _value._studentTosubmit
          : studentTosubmit // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc

class _$FetchStudentsEventImpl implements _FetchStudentsEvent {
  const _$FetchStudentsEventImpl(
      {required final List<EventModel> studentTosubmit})
      : _studentTosubmit = studentTosubmit;

  final List<EventModel> _studentTosubmit;
  @override
  List<EventModel> get studentTosubmit {
    if (_studentTosubmit is EqualUnmodifiableListView) return _studentTosubmit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentTosubmit);
  }

  @override
  String toString() {
    return 'StudentsEventsState.fetchStudentsEvent(studentTosubmit: $studentTosubmit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStudentsEventImpl &&
            const DeepCollectionEquality()
                .equals(other._studentTosubmit, _studentTosubmit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_studentTosubmit));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStudentsEventImplCopyWith<_$FetchStudentsEventImpl> get copyWith =>
      __$$FetchStudentsEventImplCopyWithImpl<_$FetchStudentsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(List<EventModel> studentTosubmit)
        fetchStudentsEvent,
  }) {
    return fetchStudentsEvent(studentTosubmit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
  }) {
    return fetchStudentsEvent?.call(studentTosubmit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(List<EventModel> studentTosubmit)? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (fetchStudentsEvent != null) {
      return fetchStudentsEvent(studentTosubmit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_StudentsEventsStateFailure value) error,
    required TResult Function(_FetchStudentsEvent value) fetchStudentsEvent,
  }) {
    return fetchStudentsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_StudentsEventsStateFailure value)? error,
    TResult? Function(_FetchStudentsEvent value)? fetchStudentsEvent,
  }) {
    return fetchStudentsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_StudentsEventsStateFailure value)? error,
    TResult Function(_FetchStudentsEvent value)? fetchStudentsEvent,
    required TResult orElse(),
  }) {
    if (fetchStudentsEvent != null) {
      return fetchStudentsEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchStudentsEvent implements StudentsEventsState {
  const factory _FetchStudentsEvent(
          {required final List<EventModel> studentTosubmit}) =
      _$FetchStudentsEventImpl;

  List<EventModel> get studentTosubmit;
  @JsonKey(ignore: true)
  _$$FetchStudentsEventImplCopyWith<_$FetchStudentsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
