// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bank_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionBankEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAllQuestionBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAllQuestionBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAllQuestionBank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchAllQuestionBankEvent value)
        fetchAllQuestionBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAllQuestionBankEvent value)? fetchAllQuestionBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAllQuestionBankEvent value)? fetchAllQuestionBank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionBankEventCopyWith<$Res> {
  factory $QuestionBankEventCopyWith(
          QuestionBankEvent value, $Res Function(QuestionBankEvent) then) =
      _$QuestionBankEventCopyWithImpl<$Res, QuestionBankEvent>;
}

/// @nodoc
class _$QuestionBankEventCopyWithImpl<$Res, $Val extends QuestionBankEvent>
    implements $QuestionBankEventCopyWith<$Res> {
  _$QuestionBankEventCopyWithImpl(this._value, this._then);

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
    extends _$QuestionBankEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'QuestionBankEvent.started()';
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
    required TResult Function() fetchAllQuestionBank,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAllQuestionBank,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAllQuestionBank,
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
    required TResult Function(_FetchAllQuestionBankEvent value)
        fetchAllQuestionBank,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAllQuestionBankEvent value)? fetchAllQuestionBank,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAllQuestionBankEvent value)? fetchAllQuestionBank,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionBankEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchAllQuestionBankEventImplCopyWith<$Res> {
  factory _$$FetchAllQuestionBankEventImplCopyWith(
          _$FetchAllQuestionBankEventImpl value,
          $Res Function(_$FetchAllQuestionBankEventImpl) then) =
      __$$FetchAllQuestionBankEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllQuestionBankEventImplCopyWithImpl<$Res>
    extends _$QuestionBankEventCopyWithImpl<$Res,
        _$FetchAllQuestionBankEventImpl>
    implements _$$FetchAllQuestionBankEventImplCopyWith<$Res> {
  __$$FetchAllQuestionBankEventImplCopyWithImpl(
      _$FetchAllQuestionBankEventImpl _value,
      $Res Function(_$FetchAllQuestionBankEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllQuestionBankEventImpl implements _FetchAllQuestionBankEvent {
  const _$FetchAllQuestionBankEventImpl();

  @override
  String toString() {
    return 'QuestionBankEvent.fetchAllQuestionBank()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllQuestionBankEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchAllQuestionBank,
  }) {
    return fetchAllQuestionBank();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchAllQuestionBank,
  }) {
    return fetchAllQuestionBank?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchAllQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAllQuestionBank != null) {
      return fetchAllQuestionBank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchAllQuestionBankEvent value)
        fetchAllQuestionBank,
  }) {
    return fetchAllQuestionBank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchAllQuestionBankEvent value)? fetchAllQuestionBank,
  }) {
    return fetchAllQuestionBank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchAllQuestionBankEvent value)? fetchAllQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAllQuestionBank != null) {
      return fetchAllQuestionBank(this);
    }
    return orElse();
  }
}

abstract class _FetchAllQuestionBankEvent implements QuestionBankEvent {
  const factory _FetchAllQuestionBankEvent() = _$FetchAllQuestionBankEventImpl;
}

/// @nodoc
mixin _$QuestionBankState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(QuestionBank questionBank) createdQuestionBank,
    required TResult Function(List<QuestionBank> assesment)
        fetchAllQuestionBank,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(QuestionBank questionBank)? createdQuestionBank,
    TResult? Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(QuestionBank questionBank)? createdQuestionBank,
    TResult Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedQuestionBank value) createdQuestionBank,
    required TResult Function(_FetchAllQuestionBank value) fetchAllQuestionBank,
    required TResult Function(_QuestionBankFailure value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult? Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult? Function(_QuestionBankFailure value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult Function(_QuestionBankFailure value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionBankStateCopyWith<$Res> {
  factory $QuestionBankStateCopyWith(
          QuestionBankState value, $Res Function(QuestionBankState) then) =
      _$QuestionBankStateCopyWithImpl<$Res, QuestionBankState>;
}

/// @nodoc
class _$QuestionBankStateCopyWithImpl<$Res, $Val extends QuestionBankState>
    implements $QuestionBankStateCopyWith<$Res> {
  _$QuestionBankStateCopyWithImpl(this._value, this._then);

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
    extends _$QuestionBankStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QuestionBankState.initial()';
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
    required TResult Function(QuestionBank questionBank) createdQuestionBank,
    required TResult Function(List<QuestionBank> assesment)
        fetchAllQuestionBank,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(QuestionBank questionBank)? createdQuestionBank,
    TResult? Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(QuestionBank questionBank)? createdQuestionBank,
    TResult Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult Function(String error)? error,
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
    required TResult Function(_CreatedQuestionBank value) createdQuestionBank,
    required TResult Function(_FetchAllQuestionBank value) fetchAllQuestionBank,
    required TResult Function(_QuestionBankFailure value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult? Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult? Function(_QuestionBankFailure value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult Function(_QuestionBankFailure value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionBankState {
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
    extends _$QuestionBankStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'QuestionBankState.loading()';
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
    required TResult Function(QuestionBank questionBank) createdQuestionBank,
    required TResult Function(List<QuestionBank> assesment)
        fetchAllQuestionBank,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(QuestionBank questionBank)? createdQuestionBank,
    TResult? Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(QuestionBank questionBank)? createdQuestionBank,
    TResult Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult Function(String error)? error,
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
    required TResult Function(_CreatedQuestionBank value) createdQuestionBank,
    required TResult Function(_FetchAllQuestionBank value) fetchAllQuestionBank,
    required TResult Function(_QuestionBankFailure value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult? Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult? Function(_QuestionBankFailure value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult Function(_QuestionBankFailure value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuestionBankState {
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
    extends _$QuestionBankStateCopyWithImpl<$Res, _$NoInternetImpl>
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
    return 'QuestionBankState.noInternet()';
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
    required TResult Function(QuestionBank questionBank) createdQuestionBank,
    required TResult Function(List<QuestionBank> assesment)
        fetchAllQuestionBank,
    required TResult Function(String error) error,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(QuestionBank questionBank)? createdQuestionBank,
    TResult? Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult? Function(String error)? error,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(QuestionBank questionBank)? createdQuestionBank,
    TResult Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult Function(String error)? error,
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
    required TResult Function(_CreatedQuestionBank value) createdQuestionBank,
    required TResult Function(_FetchAllQuestionBank value) fetchAllQuestionBank,
    required TResult Function(_QuestionBankFailure value) error,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult? Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult? Function(_QuestionBankFailure value)? error,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult Function(_QuestionBankFailure value)? error,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements QuestionBankState {
  const factory _NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$CreatedQuestionBankImplCopyWith<$Res> {
  factory _$$CreatedQuestionBankImplCopyWith(_$CreatedQuestionBankImpl value,
          $Res Function(_$CreatedQuestionBankImpl) then) =
      __$$CreatedQuestionBankImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionBank questionBank});
}

/// @nodoc
class __$$CreatedQuestionBankImplCopyWithImpl<$Res>
    extends _$QuestionBankStateCopyWithImpl<$Res, _$CreatedQuestionBankImpl>
    implements _$$CreatedQuestionBankImplCopyWith<$Res> {
  __$$CreatedQuestionBankImplCopyWithImpl(_$CreatedQuestionBankImpl _value,
      $Res Function(_$CreatedQuestionBankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionBank = null,
  }) {
    return _then(_$CreatedQuestionBankImpl(
      questionBank: null == questionBank
          ? _value.questionBank
          : questionBank // ignore: cast_nullable_to_non_nullable
              as QuestionBank,
    ));
  }
}

/// @nodoc

class _$CreatedQuestionBankImpl implements _CreatedQuestionBank {
  const _$CreatedQuestionBankImpl({required this.questionBank});

  @override
  final QuestionBank questionBank;

  @override
  String toString() {
    return 'QuestionBankState.createdQuestionBank(questionBank: $questionBank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedQuestionBankImpl &&
            (identical(other.questionBank, questionBank) ||
                other.questionBank == questionBank));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionBank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedQuestionBankImplCopyWith<_$CreatedQuestionBankImpl> get copyWith =>
      __$$CreatedQuestionBankImplCopyWithImpl<_$CreatedQuestionBankImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(QuestionBank questionBank) createdQuestionBank,
    required TResult Function(List<QuestionBank> assesment)
        fetchAllQuestionBank,
    required TResult Function(String error) error,
  }) {
    return createdQuestionBank(questionBank);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(QuestionBank questionBank)? createdQuestionBank,
    TResult? Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult? Function(String error)? error,
  }) {
    return createdQuestionBank?.call(questionBank);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(QuestionBank questionBank)? createdQuestionBank,
    TResult Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (createdQuestionBank != null) {
      return createdQuestionBank(questionBank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedQuestionBank value) createdQuestionBank,
    required TResult Function(_FetchAllQuestionBank value) fetchAllQuestionBank,
    required TResult Function(_QuestionBankFailure value) error,
  }) {
    return createdQuestionBank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult? Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult? Function(_QuestionBankFailure value)? error,
  }) {
    return createdQuestionBank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult Function(_QuestionBankFailure value)? error,
    required TResult orElse(),
  }) {
    if (createdQuestionBank != null) {
      return createdQuestionBank(this);
    }
    return orElse();
  }
}

abstract class _CreatedQuestionBank implements QuestionBankState {
  const factory _CreatedQuestionBank(
      {required final QuestionBank questionBank}) = _$CreatedQuestionBankImpl;

  QuestionBank get questionBank;
  @JsonKey(ignore: true)
  _$$CreatedQuestionBankImplCopyWith<_$CreatedQuestionBankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllQuestionBankImplCopyWith<$Res> {
  factory _$$FetchAllQuestionBankImplCopyWith(_$FetchAllQuestionBankImpl value,
          $Res Function(_$FetchAllQuestionBankImpl) then) =
      __$$FetchAllQuestionBankImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionBank> assesment});
}

/// @nodoc
class __$$FetchAllQuestionBankImplCopyWithImpl<$Res>
    extends _$QuestionBankStateCopyWithImpl<$Res, _$FetchAllQuestionBankImpl>
    implements _$$FetchAllQuestionBankImplCopyWith<$Res> {
  __$$FetchAllQuestionBankImplCopyWithImpl(_$FetchAllQuestionBankImpl _value,
      $Res Function(_$FetchAllQuestionBankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchAllQuestionBankImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<QuestionBank>,
    ));
  }
}

/// @nodoc

class _$FetchAllQuestionBankImpl implements _FetchAllQuestionBank {
  const _$FetchAllQuestionBankImpl(
      {required final List<QuestionBank> assesment})
      : _assesment = assesment;

  final List<QuestionBank> _assesment;
  @override
  List<QuestionBank> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'QuestionBankState.fetchAllQuestionBank(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllQuestionBankImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllQuestionBankImplCopyWith<_$FetchAllQuestionBankImpl>
      get copyWith =>
          __$$FetchAllQuestionBankImplCopyWithImpl<_$FetchAllQuestionBankImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(QuestionBank questionBank) createdQuestionBank,
    required TResult Function(List<QuestionBank> assesment)
        fetchAllQuestionBank,
    required TResult Function(String error) error,
  }) {
    return fetchAllQuestionBank(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(QuestionBank questionBank)? createdQuestionBank,
    TResult? Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult? Function(String error)? error,
  }) {
    return fetchAllQuestionBank?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(QuestionBank questionBank)? createdQuestionBank,
    TResult Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (fetchAllQuestionBank != null) {
      return fetchAllQuestionBank(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedQuestionBank value) createdQuestionBank,
    required TResult Function(_FetchAllQuestionBank value) fetchAllQuestionBank,
    required TResult Function(_QuestionBankFailure value) error,
  }) {
    return fetchAllQuestionBank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult? Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult? Function(_QuestionBankFailure value)? error,
  }) {
    return fetchAllQuestionBank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult Function(_QuestionBankFailure value)? error,
    required TResult orElse(),
  }) {
    if (fetchAllQuestionBank != null) {
      return fetchAllQuestionBank(this);
    }
    return orElse();
  }
}

abstract class _FetchAllQuestionBank implements QuestionBankState {
  const factory _FetchAllQuestionBank(
          {required final List<QuestionBank> assesment}) =
      _$FetchAllQuestionBankImpl;

  List<QuestionBank> get assesment;
  @JsonKey(ignore: true)
  _$$FetchAllQuestionBankImplCopyWith<_$FetchAllQuestionBankImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionBankFailureImplCopyWith<$Res> {
  factory _$$QuestionBankFailureImplCopyWith(_$QuestionBankFailureImpl value,
          $Res Function(_$QuestionBankFailureImpl) then) =
      __$$QuestionBankFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$QuestionBankFailureImplCopyWithImpl<$Res>
    extends _$QuestionBankStateCopyWithImpl<$Res, _$QuestionBankFailureImpl>
    implements _$$QuestionBankFailureImplCopyWith<$Res> {
  __$$QuestionBankFailureImplCopyWithImpl(_$QuestionBankFailureImpl _value,
      $Res Function(_$QuestionBankFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$QuestionBankFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionBankFailureImpl implements _QuestionBankFailure {
  const _$QuestionBankFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'QuestionBankState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionBankFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionBankFailureImplCopyWith<_$QuestionBankFailureImpl> get copyWith =>
      __$$QuestionBankFailureImplCopyWithImpl<_$QuestionBankFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(QuestionBank questionBank) createdQuestionBank,
    required TResult Function(List<QuestionBank> assesment)
        fetchAllQuestionBank,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(QuestionBank questionBank)? createdQuestionBank,
    TResult? Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(QuestionBank questionBank)? createdQuestionBank,
    TResult Function(List<QuestionBank> assesment)? fetchAllQuestionBank,
    TResult Function(String error)? error,
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
    required TResult Function(_CreatedQuestionBank value) createdQuestionBank,
    required TResult Function(_FetchAllQuestionBank value) fetchAllQuestionBank,
    required TResult Function(_QuestionBankFailure value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult? Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult? Function(_QuestionBankFailure value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedQuestionBank value)? createdQuestionBank,
    TResult Function(_FetchAllQuestionBank value)? fetchAllQuestionBank,
    TResult Function(_QuestionBankFailure value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QuestionBankFailure implements QuestionBankState {
  const factory _QuestionBankFailure({required final String error}) =
      _$QuestionBankFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$QuestionBankFailureImplCopyWith<_$QuestionBankFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
