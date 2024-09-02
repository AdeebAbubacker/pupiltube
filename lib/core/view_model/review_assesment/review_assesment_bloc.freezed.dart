// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_assesment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewAssesmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() review,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? review,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? review,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Review value) review,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Review value)? review,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Review value)? review,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAssesmentEventCopyWith<$Res> {
  factory $ReviewAssesmentEventCopyWith(ReviewAssesmentEvent value,
          $Res Function(ReviewAssesmentEvent) then) =
      _$ReviewAssesmentEventCopyWithImpl<$Res, ReviewAssesmentEvent>;
}

/// @nodoc
class _$ReviewAssesmentEventCopyWithImpl<$Res,
        $Val extends ReviewAssesmentEvent>
    implements $ReviewAssesmentEventCopyWith<$Res> {
  _$ReviewAssesmentEventCopyWithImpl(this._value, this._then);

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
    extends _$ReviewAssesmentEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ReviewAssesmentEvent.started()';
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
    required TResult Function() review,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? review,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? review,
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
    required TResult Function(_Review value) review,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Review value)? review,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Review value)? review,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReviewAssesmentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewAssesmentEventCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewImpl implements _Review {
  const _$ReviewImpl();

  @override
  String toString() {
    return 'ReviewAssesmentEvent.review()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() review,
  }) {
    return review();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? review,
  }) {
    return review?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? review,
    required TResult orElse(),
  }) {
    if (review != null) {
      return review();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Review value) review,
  }) {
    return review(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Review value)? review,
  }) {
    return review?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Review value)? review,
    required TResult orElse(),
  }) {
    if (review != null) {
      return review(this);
    }
    return orElse();
  }
}

abstract class _Review implements ReviewAssesmentEvent {
  const factory _Review() = _$ReviewImpl;
}

/// @nodoc
mixin _$ReviewAssesmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(AssessmentReviewResponse assesment)
        reviewAssesment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(AssessmentReviewResponse assesment)? reviewAssesment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(AssessmentReviewResponse assesment)? reviewAssesment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ReviewAssesmentStateFailure value) error,
    required TResult Function(_ReviewAssesment value) reviewAssesment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ReviewAssesmentStateFailure value)? error,
    TResult? Function(_ReviewAssesment value)? reviewAssesment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ReviewAssesmentStateFailure value)? error,
    TResult Function(_ReviewAssesment value)? reviewAssesment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAssesmentStateCopyWith<$Res> {
  factory $ReviewAssesmentStateCopyWith(ReviewAssesmentState value,
          $Res Function(ReviewAssesmentState) then) =
      _$ReviewAssesmentStateCopyWithImpl<$Res, ReviewAssesmentState>;
}

/// @nodoc
class _$ReviewAssesmentStateCopyWithImpl<$Res,
        $Val extends ReviewAssesmentState>
    implements $ReviewAssesmentStateCopyWith<$Res> {
  _$ReviewAssesmentStateCopyWithImpl(this._value, this._then);

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
    extends _$ReviewAssesmentStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ReviewAssesmentState.initial()';
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
    required TResult Function(AssessmentReviewResponse assesment)
        reviewAssesment,
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
    TResult? Function(AssessmentReviewResponse assesment)? reviewAssesment,
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
    TResult Function(AssessmentReviewResponse assesment)? reviewAssesment,
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
    required TResult Function(_ReviewAssesmentStateFailure value) error,
    required TResult Function(_ReviewAssesment value) reviewAssesment,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ReviewAssesmentStateFailure value)? error,
    TResult? Function(_ReviewAssesment value)? reviewAssesment,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ReviewAssesmentStateFailure value)? error,
    TResult Function(_ReviewAssesment value)? reviewAssesment,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReviewAssesmentState {
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
    extends _$ReviewAssesmentStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ReviewAssesmentState.loading()';
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
    required TResult Function(AssessmentReviewResponse assesment)
        reviewAssesment,
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
    TResult? Function(AssessmentReviewResponse assesment)? reviewAssesment,
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
    TResult Function(AssessmentReviewResponse assesment)? reviewAssesment,
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
    required TResult Function(_ReviewAssesmentStateFailure value) error,
    required TResult Function(_ReviewAssesment value) reviewAssesment,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ReviewAssesmentStateFailure value)? error,
    TResult? Function(_ReviewAssesment value)? reviewAssesment,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ReviewAssesmentStateFailure value)? error,
    TResult Function(_ReviewAssesment value)? reviewAssesment,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReviewAssesmentState {
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
    extends _$ReviewAssesmentStateCopyWithImpl<$Res, _$NoInternetImpl>
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
    return 'ReviewAssesmentState.noInternet()';
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
    required TResult Function(AssessmentReviewResponse assesment)
        reviewAssesment,
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
    TResult? Function(AssessmentReviewResponse assesment)? reviewAssesment,
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
    TResult Function(AssessmentReviewResponse assesment)? reviewAssesment,
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
    required TResult Function(_ReviewAssesmentStateFailure value) error,
    required TResult Function(_ReviewAssesment value) reviewAssesment,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ReviewAssesmentStateFailure value)? error,
    TResult? Function(_ReviewAssesment value)? reviewAssesment,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ReviewAssesmentStateFailure value)? error,
    TResult Function(_ReviewAssesment value)? reviewAssesment,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements ReviewAssesmentState {
  const factory _NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$ReviewAssesmentStateFailureImplCopyWith<$Res> {
  factory _$$ReviewAssesmentStateFailureImplCopyWith(
          _$ReviewAssesmentStateFailureImpl value,
          $Res Function(_$ReviewAssesmentStateFailureImpl) then) =
      __$$ReviewAssesmentStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ReviewAssesmentStateFailureImplCopyWithImpl<$Res>
    extends _$ReviewAssesmentStateCopyWithImpl<$Res,
        _$ReviewAssesmentStateFailureImpl>
    implements _$$ReviewAssesmentStateFailureImplCopyWith<$Res> {
  __$$ReviewAssesmentStateFailureImplCopyWithImpl(
      _$ReviewAssesmentStateFailureImpl _value,
      $Res Function(_$ReviewAssesmentStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ReviewAssesmentStateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReviewAssesmentStateFailureImpl
    implements _ReviewAssesmentStateFailure {
  const _$ReviewAssesmentStateFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ReviewAssesmentState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAssesmentStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAssesmentStateFailureImplCopyWith<_$ReviewAssesmentStateFailureImpl>
      get copyWith => __$$ReviewAssesmentStateFailureImplCopyWithImpl<
          _$ReviewAssesmentStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(AssessmentReviewResponse assesment)
        reviewAssesment,
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
    TResult? Function(AssessmentReviewResponse assesment)? reviewAssesment,
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
    TResult Function(AssessmentReviewResponse assesment)? reviewAssesment,
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
    required TResult Function(_ReviewAssesmentStateFailure value) error,
    required TResult Function(_ReviewAssesment value) reviewAssesment,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ReviewAssesmentStateFailure value)? error,
    TResult? Function(_ReviewAssesment value)? reviewAssesment,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ReviewAssesmentStateFailure value)? error,
    TResult Function(_ReviewAssesment value)? reviewAssesment,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ReviewAssesmentStateFailure implements ReviewAssesmentState {
  const factory _ReviewAssesmentStateFailure({required final String error}) =
      _$ReviewAssesmentStateFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ReviewAssesmentStateFailureImplCopyWith<_$ReviewAssesmentStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewAssesmentImplCopyWith<$Res> {
  factory _$$ReviewAssesmentImplCopyWith(_$ReviewAssesmentImpl value,
          $Res Function(_$ReviewAssesmentImpl) then) =
      __$$ReviewAssesmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssessmentReviewResponse assesment});
}

/// @nodoc
class __$$ReviewAssesmentImplCopyWithImpl<$Res>
    extends _$ReviewAssesmentStateCopyWithImpl<$Res, _$ReviewAssesmentImpl>
    implements _$$ReviewAssesmentImplCopyWith<$Res> {
  __$$ReviewAssesmentImplCopyWithImpl(
      _$ReviewAssesmentImpl _value, $Res Function(_$ReviewAssesmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$ReviewAssesmentImpl(
      assesment: null == assesment
          ? _value.assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as AssessmentReviewResponse,
    ));
  }
}

/// @nodoc

class _$ReviewAssesmentImpl implements _ReviewAssesment {
  const _$ReviewAssesmentImpl({required this.assesment});

  @override
  final AssessmentReviewResponse assesment;

  @override
  String toString() {
    return 'ReviewAssesmentState.reviewAssesment(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAssesmentImpl &&
            (identical(other.assesment, assesment) ||
                other.assesment == assesment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assesment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAssesmentImplCopyWith<_$ReviewAssesmentImpl> get copyWith =>
      __$$ReviewAssesmentImplCopyWithImpl<_$ReviewAssesmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(String error) error,
    required TResult Function(AssessmentReviewResponse assesment)
        reviewAssesment,
  }) {
    return reviewAssesment(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(String error)? error,
    TResult? Function(AssessmentReviewResponse assesment)? reviewAssesment,
  }) {
    return reviewAssesment?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(String error)? error,
    TResult Function(AssessmentReviewResponse assesment)? reviewAssesment,
    required TResult orElse(),
  }) {
    if (reviewAssesment != null) {
      return reviewAssesment(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_ReviewAssesmentStateFailure value) error,
    required TResult Function(_ReviewAssesment value) reviewAssesment,
  }) {
    return reviewAssesment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_ReviewAssesmentStateFailure value)? error,
    TResult? Function(_ReviewAssesment value)? reviewAssesment,
  }) {
    return reviewAssesment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_ReviewAssesmentStateFailure value)? error,
    TResult Function(_ReviewAssesment value)? reviewAssesment,
    required TResult orElse(),
  }) {
    if (reviewAssesment != null) {
      return reviewAssesment(this);
    }
    return orElse();
  }
}

abstract class _ReviewAssesment implements ReviewAssesmentState {
  const factory _ReviewAssesment(
          {required final AssessmentReviewResponse assesment}) =
      _$ReviewAssesmentImpl;

  AssessmentReviewResponse get assesment;
  @JsonKey(ignore: true)
  _$$ReviewAssesmentImplCopyWith<_$ReviewAssesmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
