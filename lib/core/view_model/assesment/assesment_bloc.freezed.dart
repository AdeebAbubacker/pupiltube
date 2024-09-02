// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assesment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssesmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssesmentEventCopyWith<$Res> {
  factory $AssesmentEventCopyWith(
          AssesmentEvent value, $Res Function(AssesmentEvent) then) =
      _$AssesmentEventCopyWithImpl<$Res, AssesmentEvent>;
}

/// @nodoc
class _$AssesmentEventCopyWithImpl<$Res, $Val extends AssesmentEvent>
    implements $AssesmentEventCopyWith<$Res> {
  _$AssesmentEventCopyWithImpl(this._value, this._then);

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
    extends _$AssesmentEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AssesmentEvent.started()';
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
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
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
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AssesmentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateAssessmentImplCopyWith<$Res> {
  factory _$$CreateAssessmentImplCopyWith(_$CreateAssessmentImpl value,
          $Res Function(_$CreateAssessmentImpl) then) =
      __$$CreateAssessmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$CreateAssessmentImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res, _$CreateAssessmentImpl>
    implements _$$CreateAssessmentImplCopyWith<$Res> {
  __$$CreateAssessmentImplCopyWithImpl(_$CreateAssessmentImpl _value,
      $Res Function(_$CreateAssessmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$CreateAssessmentImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateAssessmentImpl implements _CreateAssessment {
  const _$CreateAssessmentImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'AssesmentEvent.createAssessment(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAssessmentImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAssessmentImplCopyWith<_$CreateAssessmentImpl> get copyWith =>
      __$$CreateAssessmentImplCopyWithImpl<_$CreateAssessmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return createAssessment(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return createAssessment?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (createAssessment != null) {
      return createAssessment(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return createAssessment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return createAssessment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (createAssessment != null) {
      return createAssessment(this);
    }
    return orElse();
  }
}

abstract class _CreateAssessment implements AssesmentEvent {
  const factory _CreateAssessment({required final String title}) =
      _$CreateAssessmentImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$CreateAssessmentImplCopyWith<_$CreateAssessmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentEventImplCopyWith<$Res> {
  factory _$$FetchAssesmentEventImplCopyWith(_$FetchAssesmentEventImpl value,
          $Res Function(_$FetchAssesmentEventImpl) then) =
      __$$FetchAssesmentEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAssesmentEventImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res, _$FetchAssesmentEventImpl>
    implements _$$FetchAssesmentEventImplCopyWith<$Res> {
  __$$FetchAssesmentEventImplCopyWithImpl(_$FetchAssesmentEventImpl _value,
      $Res Function(_$FetchAssesmentEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAssesmentEventImpl implements _FetchAssesmentEvent {
  const _$FetchAssesmentEventImpl();

  @override
  String toString() {
    return 'AssesmentEvent.fetchAssesment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchAssesment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchAssesment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesment != null) {
      return fetchAssesment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchAssesment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchAssesment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesment != null) {
      return fetchAssesment(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentEvent implements AssesmentEvent {
  const factory _FetchAssesmentEvent() = _$FetchAssesmentEventImpl;
}

/// @nodoc
abstract class _$$FetchAssesmentByIdEventImplCopyWith<$Res> {
  factory _$$FetchAssesmentByIdEventImplCopyWith(
          _$FetchAssesmentByIdEventImpl value,
          $Res Function(_$FetchAssesmentByIdEventImpl) then) =
      __$$FetchAssesmentByIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchAssesmentByIdEventImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res, _$FetchAssesmentByIdEventImpl>
    implements _$$FetchAssesmentByIdEventImplCopyWith<$Res> {
  __$$FetchAssesmentByIdEventImplCopyWithImpl(
      _$FetchAssesmentByIdEventImpl _value,
      $Res Function(_$FetchAssesmentByIdEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchAssesmentByIdEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentByIdEventImpl implements _FetchAssesmentByIdEvent {
  const _$FetchAssesmentByIdEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AssesmentEvent.fetchAssesmentById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentByIdEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentByIdEventImplCopyWith<_$FetchAssesmentByIdEventImpl>
      get copyWith => __$$FetchAssesmentByIdEventImplCopyWithImpl<
          _$FetchAssesmentByIdEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchAssesmentById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchAssesmentById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentById != null) {
      return fetchAssesmentById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchAssesmentById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchAssesmentById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentById != null) {
      return fetchAssesmentById(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentByIdEvent implements AssesmentEvent {
  const factory _FetchAssesmentByIdEvent({required final String id}) =
      _$FetchAssesmentByIdEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchAssesmentByIdEventImplCopyWith<_$FetchAssesmentByIdEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentForMyClassEventImplCopyWith<$Res> {
  factory _$$FetchAssesmentForMyClassEventImplCopyWith(
          _$FetchAssesmentForMyClassEventImpl value,
          $Res Function(_$FetchAssesmentForMyClassEventImpl) then) =
      __$$FetchAssesmentForMyClassEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchAssesmentForMyClassEventImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res,
        _$FetchAssesmentForMyClassEventImpl>
    implements _$$FetchAssesmentForMyClassEventImplCopyWith<$Res> {
  __$$FetchAssesmentForMyClassEventImplCopyWithImpl(
      _$FetchAssesmentForMyClassEventImpl _value,
      $Res Function(_$FetchAssesmentForMyClassEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchAssesmentForMyClassEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentForMyClassEventImpl
    implements _FetchAssesmentForMyClassEvent {
  const _$FetchAssesmentForMyClassEventImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AssesmentEvent.fetchAssesmentForMyClassEvent(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentForMyClassEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentForMyClassEventImplCopyWith<
          _$FetchAssesmentForMyClassEventImpl>
      get copyWith => __$$FetchAssesmentForMyClassEventImplCopyWithImpl<
          _$FetchAssesmentForMyClassEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchAssesmentForMyClassEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchAssesmentForMyClassEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentForMyClassEvent != null) {
      return fetchAssesmentForMyClassEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchAssesmentForMyClassEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchAssesmentForMyClassEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentForMyClassEvent != null) {
      return fetchAssesmentForMyClassEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentForMyClassEvent implements AssesmentEvent {
  const factory _FetchAssesmentForMyClassEvent({required final String id}) =
      _$FetchAssesmentForMyClassEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchAssesmentForMyClassEventImplCopyWith<
          _$FetchAssesmentForMyClassEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentToDoImplCopyWith<$Res> {
  factory _$$FetchAssesmentToDoImplCopyWith(_$FetchAssesmentToDoImpl value,
          $Res Function(_$FetchAssesmentToDoImpl) then) =
      __$$FetchAssesmentToDoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchAssesmentToDoImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res, _$FetchAssesmentToDoImpl>
    implements _$$FetchAssesmentToDoImplCopyWith<$Res> {
  __$$FetchAssesmentToDoImplCopyWithImpl(_$FetchAssesmentToDoImpl _value,
      $Res Function(_$FetchAssesmentToDoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchAssesmentToDoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentToDoImpl implements _FetchAssesmentToDo {
  const _$FetchAssesmentToDoImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AssesmentEvent.fetchAssesmentToDo(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentToDoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentToDoImplCopyWith<_$FetchAssesmentToDoImpl> get copyWith =>
      __$$FetchAssesmentToDoImplCopyWithImpl<_$FetchAssesmentToDoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchAssesmentToDo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchAssesmentToDo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentToDo != null) {
      return fetchAssesmentToDo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchAssesmentToDo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchAssesmentToDo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentToDo != null) {
      return fetchAssesmentToDo(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentToDo implements AssesmentEvent {
  const factory _FetchAssesmentToDo({required final String id}) =
      _$FetchAssesmentToDoImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchAssesmentToDoImplCopyWith<_$FetchAssesmentToDoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentOverDueImplCopyWith<$Res> {
  factory _$$FetchAssesmentOverDueImplCopyWith(
          _$FetchAssesmentOverDueImpl value,
          $Res Function(_$FetchAssesmentOverDueImpl) then) =
      __$$FetchAssesmentOverDueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchAssesmentOverDueImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res, _$FetchAssesmentOverDueImpl>
    implements _$$FetchAssesmentOverDueImplCopyWith<$Res> {
  __$$FetchAssesmentOverDueImplCopyWithImpl(_$FetchAssesmentOverDueImpl _value,
      $Res Function(_$FetchAssesmentOverDueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchAssesmentOverDueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentOverDueImpl implements _FetchAssesmentOverDue {
  const _$FetchAssesmentOverDueImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AssesmentEvent.fetchAssesmentOverDue(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentOverDueImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentOverDueImplCopyWith<_$FetchAssesmentOverDueImpl>
      get copyWith => __$$FetchAssesmentOverDueImplCopyWithImpl<
          _$FetchAssesmentOverDueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchAssesmentOverDue(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchAssesmentOverDue?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentOverDue != null) {
      return fetchAssesmentOverDue(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchAssesmentOverDue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchAssesmentOverDue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentOverDue != null) {
      return fetchAssesmentOverDue(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentOverDue implements AssesmentEvent {
  const factory _FetchAssesmentOverDue({required final String id}) =
      _$FetchAssesmentOverDueImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchAssesmentOverDueImplCopyWith<_$FetchAssesmentOverDueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentCompletedImplCopyWith<$Res> {
  factory _$$FetchAssesmentCompletedImplCopyWith(
          _$FetchAssesmentCompletedImpl value,
          $Res Function(_$FetchAssesmentCompletedImpl) then) =
      __$$FetchAssesmentCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchAssesmentCompletedImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res, _$FetchAssesmentCompletedImpl>
    implements _$$FetchAssesmentCompletedImplCopyWith<$Res> {
  __$$FetchAssesmentCompletedImplCopyWithImpl(
      _$FetchAssesmentCompletedImpl _value,
      $Res Function(_$FetchAssesmentCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchAssesmentCompletedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentCompletedImpl implements _FetchAssesmentCompleted {
  const _$FetchAssesmentCompletedImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AssesmentEvent.fetchAssesmentCompleted(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentCompletedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentCompletedImplCopyWith<_$FetchAssesmentCompletedImpl>
      get copyWith => __$$FetchAssesmentCompletedImplCopyWithImpl<
          _$FetchAssesmentCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchAssesmentCompleted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchAssesmentCompleted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentCompleted != null) {
      return fetchAssesmentCompleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchAssesmentCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchAssesmentCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentCompleted != null) {
      return fetchAssesmentCompleted(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentCompleted implements AssesmentEvent {
  const factory _FetchAssesmentCompleted({required final String id}) =
      _$FetchAssesmentCompletedImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchAssesmentCompletedImplCopyWith<_$FetchAssesmentCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentForMyClassAsTeacherImplCopyWith<$Res> {
  factory _$$FetchAssesmentForMyClassAsTeacherImplCopyWith(
          _$FetchAssesmentForMyClassAsTeacherImpl value,
          $Res Function(_$FetchAssesmentForMyClassAsTeacherImpl) then) =
      __$$FetchAssesmentForMyClassAsTeacherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAssesmentForMyClassAsTeacherImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res,
        _$FetchAssesmentForMyClassAsTeacherImpl>
    implements _$$FetchAssesmentForMyClassAsTeacherImplCopyWith<$Res> {
  __$$FetchAssesmentForMyClassAsTeacherImplCopyWithImpl(
      _$FetchAssesmentForMyClassAsTeacherImpl _value,
      $Res Function(_$FetchAssesmentForMyClassAsTeacherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAssesmentForMyClassAsTeacherImpl
    implements _FetchAssesmentForMyClassAsTeacher {
  const _$FetchAssesmentForMyClassAsTeacherImpl();

  @override
  String toString() {
    return 'AssesmentEvent.fetchAssesmentForMyClassAsTeacher()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentForMyClassAsTeacherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchAssesmentForMyClassAsTeacher();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchAssesmentForMyClassAsTeacher?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentForMyClassAsTeacher != null) {
      return fetchAssesmentForMyClassAsTeacher();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchAssesmentForMyClassAsTeacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchAssesmentForMyClassAsTeacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchAssesmentForMyClassAsTeacher != null) {
      return fetchAssesmentForMyClassAsTeacher(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentForMyClassAsTeacher implements AssesmentEvent {
  const factory _FetchAssesmentForMyClassAsTeacher() =
      _$FetchAssesmentForMyClassAsTeacherImpl;
}

/// @nodoc
abstract class _$$FetchOngoingAssesmentAsTeacherImplCopyWith<$Res> {
  factory _$$FetchOngoingAssesmentAsTeacherImplCopyWith(
          _$FetchOngoingAssesmentAsTeacherImpl value,
          $Res Function(_$FetchOngoingAssesmentAsTeacherImpl) then) =
      __$$FetchOngoingAssesmentAsTeacherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOngoingAssesmentAsTeacherImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res,
        _$FetchOngoingAssesmentAsTeacherImpl>
    implements _$$FetchOngoingAssesmentAsTeacherImplCopyWith<$Res> {
  __$$FetchOngoingAssesmentAsTeacherImplCopyWithImpl(
      _$FetchOngoingAssesmentAsTeacherImpl _value,
      $Res Function(_$FetchOngoingAssesmentAsTeacherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchOngoingAssesmentAsTeacherImpl
    implements _FetchOngoingAssesmentAsTeacher {
  const _$FetchOngoingAssesmentAsTeacherImpl();

  @override
  String toString() {
    return 'AssesmentEvent.fetchOngoingAssesmentAsTeacher()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOngoingAssesmentAsTeacherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchOngoingAssesmentAsTeacher();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchOngoingAssesmentAsTeacher?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchOngoingAssesmentAsTeacher != null) {
      return fetchOngoingAssesmentAsTeacher();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchOngoingAssesmentAsTeacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchOngoingAssesmentAsTeacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchOngoingAssesmentAsTeacher != null) {
      return fetchOngoingAssesmentAsTeacher(this);
    }
    return orElse();
  }
}

abstract class _FetchOngoingAssesmentAsTeacher implements AssesmentEvent {
  const factory _FetchOngoingAssesmentAsTeacher() =
      _$FetchOngoingAssesmentAsTeacherImpl;
}

/// @nodoc
abstract class _$$FetchdraftAssementImplCopyWith<$Res> {
  factory _$$FetchdraftAssementImplCopyWith(_$FetchdraftAssementImpl value,
          $Res Function(_$FetchdraftAssementImpl) then) =
      __$$FetchdraftAssementImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchdraftAssementImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res, _$FetchdraftAssementImpl>
    implements _$$FetchdraftAssementImplCopyWith<$Res> {
  __$$FetchdraftAssementImplCopyWithImpl(_$FetchdraftAssementImpl _value,
      $Res Function(_$FetchdraftAssementImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchdraftAssementImpl implements _FetchdraftAssement {
  const _$FetchdraftAssementImpl();

  @override
  String toString() {
    return 'AssesmentEvent.fetchdraftAssement()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchdraftAssementImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return fetchdraftAssement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return fetchdraftAssement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchdraftAssement != null) {
      return fetchdraftAssement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return fetchdraftAssement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return fetchdraftAssement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (fetchdraftAssement != null) {
      return fetchdraftAssement(this);
    }
    return orElse();
  }
}

abstract class _FetchdraftAssement implements AssesmentEvent {
  const factory _FetchdraftAssement() = _$FetchdraftAssementImpl;
}

/// @nodoc
abstract class _$$ImportQuestionBankEventImplCopyWith<$Res> {
  factory _$$ImportQuestionBankEventImplCopyWith(
          _$ImportQuestionBankEventImpl value,
          $Res Function(_$ImportQuestionBankEventImpl) then) =
      __$$ImportQuestionBankEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String assesmentId, List<Question> question});
}

/// @nodoc
class __$$ImportQuestionBankEventImplCopyWithImpl<$Res>
    extends _$AssesmentEventCopyWithImpl<$Res, _$ImportQuestionBankEventImpl>
    implements _$$ImportQuestionBankEventImplCopyWith<$Res> {
  __$$ImportQuestionBankEventImplCopyWithImpl(
      _$ImportQuestionBankEventImpl _value,
      $Res Function(_$ImportQuestionBankEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesmentId = null,
    Object? question = null,
  }) {
    return _then(_$ImportQuestionBankEventImpl(
      assesmentId: null == assesmentId
          ? _value.assesmentId
          : assesmentId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$ImportQuestionBankEventImpl implements _ImportQuestionBankEvent {
  const _$ImportQuestionBankEventImpl(
      {required this.assesmentId, required final List<Question> question})
      : _question = question;

  @override
  final String assesmentId;
  final List<Question> _question;
  @override
  List<Question> get question {
    if (_question is EqualUnmodifiableListView) return _question;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_question);
  }

  @override
  String toString() {
    return 'AssesmentEvent.importQuestionBank(assesmentId: $assesmentId, question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportQuestionBankEventImpl &&
            (identical(other.assesmentId, assesmentId) ||
                other.assesmentId == assesmentId) &&
            const DeepCollectionEquality().equals(other._question, _question));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, assesmentId, const DeepCollectionEquality().hash(_question));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportQuestionBankEventImplCopyWith<_$ImportQuestionBankEventImpl>
      get copyWith => __$$ImportQuestionBankEventImplCopyWithImpl<
          _$ImportQuestionBankEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) createAssessment,
    required TResult Function() fetchAssesment,
    required TResult Function(String id) fetchAssesmentById,
    required TResult Function(String id) fetchAssesmentForMyClassEvent,
    required TResult Function(String id) fetchAssesmentToDo,
    required TResult Function(String id) fetchAssesmentOverDue,
    required TResult Function(String id) fetchAssesmentCompleted,
    required TResult Function() fetchAssesmentForMyClassAsTeacher,
    required TResult Function() fetchOngoingAssesmentAsTeacher,
    required TResult Function() fetchdraftAssement,
    required TResult Function(String assesmentId, List<Question> question)
        importQuestionBank,
  }) {
    return importQuestionBank(assesmentId, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? createAssessment,
    TResult? Function()? fetchAssesment,
    TResult? Function(String id)? fetchAssesmentById,
    TResult? Function(String id)? fetchAssesmentForMyClassEvent,
    TResult? Function(String id)? fetchAssesmentToDo,
    TResult? Function(String id)? fetchAssesmentOverDue,
    TResult? Function(String id)? fetchAssesmentCompleted,
    TResult? Function()? fetchAssesmentForMyClassAsTeacher,
    TResult? Function()? fetchOngoingAssesmentAsTeacher,
    TResult? Function()? fetchdraftAssement,
    TResult? Function(String assesmentId, List<Question> question)?
        importQuestionBank,
  }) {
    return importQuestionBank?.call(assesmentId, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? createAssessment,
    TResult Function()? fetchAssesment,
    TResult Function(String id)? fetchAssesmentById,
    TResult Function(String id)? fetchAssesmentForMyClassEvent,
    TResult Function(String id)? fetchAssesmentToDo,
    TResult Function(String id)? fetchAssesmentOverDue,
    TResult Function(String id)? fetchAssesmentCompleted,
    TResult Function()? fetchAssesmentForMyClassAsTeacher,
    TResult Function()? fetchOngoingAssesmentAsTeacher,
    TResult Function()? fetchdraftAssement,
    TResult Function(String assesmentId, List<Question> question)?
        importQuestionBank,
    required TResult orElse(),
  }) {
    if (importQuestionBank != null) {
      return importQuestionBank(assesmentId, question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAssessment value) createAssessment,
    required TResult Function(_FetchAssesmentEvent value) fetchAssesment,
    required TResult Function(_FetchAssesmentByIdEvent value)
        fetchAssesmentById,
    required TResult Function(_FetchAssesmentForMyClassEvent value)
        fetchAssesmentForMyClassEvent,
    required TResult Function(_FetchAssesmentToDo value) fetchAssesmentToDo,
    required TResult Function(_FetchAssesmentOverDue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentForMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingAssesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssement value) fetchdraftAssement,
    required TResult Function(_ImportQuestionBankEvent value)
        importQuestionBank,
  }) {
    return importQuestionBank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAssessment value)? createAssessment,
    TResult? Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult? Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult? Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult? Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult? Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult? Function(_ImportQuestionBankEvent value)? importQuestionBank,
  }) {
    return importQuestionBank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAssessment value)? createAssessment,
    TResult Function(_FetchAssesmentEvent value)? fetchAssesment,
    TResult Function(_FetchAssesmentByIdEvent value)? fetchAssesmentById,
    TResult Function(_FetchAssesmentForMyClassEvent value)?
        fetchAssesmentForMyClassEvent,
    TResult Function(_FetchAssesmentToDo value)? fetchAssesmentToDo,
    TResult Function(_FetchAssesmentOverDue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentForMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingAssesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssement value)? fetchdraftAssement,
    TResult Function(_ImportQuestionBankEvent value)? importQuestionBank,
    required TResult orElse(),
  }) {
    if (importQuestionBank != null) {
      return importQuestionBank(this);
    }
    return orElse();
  }
}

abstract class _ImportQuestionBankEvent implements AssesmentEvent {
  const factory _ImportQuestionBankEvent(
      {required final String assesmentId,
      required final List<Question> question}) = _$ImportQuestionBankEventImpl;

  String get assesmentId;
  List<Question> get question;
  @JsonKey(ignore: true)
  _$$ImportQuestionBankEventImplCopyWith<_$ImportQuestionBankEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssesmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssesmentStateCopyWith<$Res> {
  factory $AssesmentStateCopyWith(
          AssesmentState value, $Res Function(AssesmentState) then) =
      _$AssesmentStateCopyWithImpl<$Res, AssesmentState>;
}

/// @nodoc
class _$AssesmentStateCopyWithImpl<$Res, $Val extends AssesmentState>
    implements $AssesmentStateCopyWith<$Res> {
  _$AssesmentStateCopyWithImpl(this._value, this._then);

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
    extends _$AssesmentStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AssesmentState.initial()';
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
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
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
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AssesmentState {
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
    extends _$AssesmentStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AssesmentState.loading()';
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
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
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
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AssesmentState {
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
    extends _$AssesmentStateCopyWithImpl<$Res, _$NoInternetImpl>
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
    return 'AssesmentState.noInternet()';
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
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
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
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements AssesmentState {
  const factory _NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$CreatedAssesmentImplCopyWith<$Res> {
  factory _$$CreatedAssesmentImplCopyWith(_$CreatedAssesmentImpl value,
          $Res Function(_$CreatedAssesmentImpl) then) =
      __$$CreatedAssesmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssessmentModel assesment});
}

/// @nodoc
class __$$CreatedAssesmentImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$CreatedAssesmentImpl>
    implements _$$CreatedAssesmentImplCopyWith<$Res> {
  __$$CreatedAssesmentImplCopyWithImpl(_$CreatedAssesmentImpl _value,
      $Res Function(_$CreatedAssesmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$CreatedAssesmentImpl(
      assesment: null == assesment
          ? _value.assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel,
    ));
  }
}

/// @nodoc

class _$CreatedAssesmentImpl implements _CreatedAssesment {
  const _$CreatedAssesmentImpl({required this.assesment});

  @override
  final AssessmentModel assesment;

  @override
  String toString() {
    return 'AssesmentState.createdAssesment(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedAssesmentImpl &&
            (identical(other.assesment, assesment) ||
                other.assesment == assesment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assesment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedAssesmentImplCopyWith<_$CreatedAssesmentImpl> get copyWith =>
      __$$CreatedAssesmentImplCopyWithImpl<_$CreatedAssesmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return createdAssesment(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return createdAssesment?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (createdAssesment != null) {
      return createdAssesment(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return createdAssesment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return createdAssesment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (createdAssesment != null) {
      return createdAssesment(this);
    }
    return orElse();
  }
}

abstract class _CreatedAssesment implements AssesmentState {
  const factory _CreatedAssesment({required final AssessmentModel assesment}) =
      _$CreatedAssesmentImpl;

  AssessmentModel get assesment;
  @JsonKey(ignore: true)
  _$$CreatedAssesmentImplCopyWith<_$CreatedAssesmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentImplCopyWith<$Res> {
  factory _$$FetchAssesmentImplCopyWith(_$FetchAssesmentImpl value,
          $Res Function(_$FetchAssesmentImpl) then) =
      __$$FetchAssesmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssessmentModel> assesment});
}

/// @nodoc
class __$$FetchAssesmentImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$FetchAssesmentImpl>
    implements _$$FetchAssesmentImplCopyWith<$Res> {
  __$$FetchAssesmentImplCopyWithImpl(
      _$FetchAssesmentImpl _value, $Res Function(_$FetchAssesmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchAssesmentImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<AssessmentModel>,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentImpl implements _FetchAssesment {
  const _$FetchAssesmentImpl({required final List<AssessmentModel> assesment})
      : _assesment = assesment;

  final List<AssessmentModel> _assesment;
  @override
  List<AssessmentModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'AssesmentState.fetchAssesment(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentImplCopyWith<_$FetchAssesmentImpl> get copyWith =>
      __$$FetchAssesmentImplCopyWithImpl<_$FetchAssesmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchAssesment(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchAssesment?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesment != null) {
      return fetchAssesment(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchAssesment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchAssesment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesment != null) {
      return fetchAssesment(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesment implements AssesmentState {
  const factory _FetchAssesment(
      {required final List<AssessmentModel> assesment}) = _$FetchAssesmentImpl;

  List<AssessmentModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchAssesmentImplCopyWith<_$FetchAssesmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentForMyClassImplCopyWith<$Res> {
  factory _$$FetchAssesmentForMyClassImplCopyWith(
          _$FetchAssesmentForMyClassImpl value,
          $Res Function(_$FetchAssesmentForMyClassImpl) then) =
      __$$FetchAssesmentForMyClassImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssessmentModel> assesment});
}

/// @nodoc
class __$$FetchAssesmentForMyClassImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$FetchAssesmentForMyClassImpl>
    implements _$$FetchAssesmentForMyClassImplCopyWith<$Res> {
  __$$FetchAssesmentForMyClassImplCopyWithImpl(
      _$FetchAssesmentForMyClassImpl _value,
      $Res Function(_$FetchAssesmentForMyClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchAssesmentForMyClassImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<AssessmentModel>,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentForMyClassImpl implements _FetchAssesmentForMyClass {
  const _$FetchAssesmentForMyClassImpl(
      {required final List<AssessmentModel> assesment})
      : _assesment = assesment;

  final List<AssessmentModel> _assesment;
  @override
  List<AssessmentModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'AssesmentState.fetchAssesmentForMyClass(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentForMyClassImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentForMyClassImplCopyWith<_$FetchAssesmentForMyClassImpl>
      get copyWith => __$$FetchAssesmentForMyClassImplCopyWithImpl<
          _$FetchAssesmentForMyClassImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchAssesmentForMyClass(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchAssesmentForMyClass?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentForMyClass != null) {
      return fetchAssesmentForMyClass(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentForMyClass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentForMyClass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentForMyClass != null) {
      return fetchAssesmentForMyClass(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentForMyClass implements AssesmentState {
  const factory _FetchAssesmentForMyClass(
          {required final List<AssessmentModel> assesment}) =
      _$FetchAssesmentForMyClassImpl;

  List<AssessmentModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchAssesmentForMyClassImplCopyWith<_$FetchAssesmentForMyClassImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentTodoImplCopyWith<$Res> {
  factory _$$FetchAssesmentTodoImplCopyWith(_$FetchAssesmentTodoImpl value,
          $Res Function(_$FetchAssesmentTodoImpl) then) =
      __$$FetchAssesmentTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssessmentModel> assesment});
}

/// @nodoc
class __$$FetchAssesmentTodoImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$FetchAssesmentTodoImpl>
    implements _$$FetchAssesmentTodoImplCopyWith<$Res> {
  __$$FetchAssesmentTodoImplCopyWithImpl(_$FetchAssesmentTodoImpl _value,
      $Res Function(_$FetchAssesmentTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchAssesmentTodoImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<AssessmentModel>,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentTodoImpl implements _FetchAssesmentTodo {
  const _$FetchAssesmentTodoImpl(
      {required final List<AssessmentModel> assesment})
      : _assesment = assesment;

  final List<AssessmentModel> _assesment;
  @override
  List<AssessmentModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'AssesmentState.fetchAssesmentTodo(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentTodoImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentTodoImplCopyWith<_$FetchAssesmentTodoImpl> get copyWith =>
      __$$FetchAssesmentTodoImplCopyWithImpl<_$FetchAssesmentTodoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchAssesmentTodo(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchAssesmentTodo?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentTodo != null) {
      return fetchAssesmentTodo(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentTodo != null) {
      return fetchAssesmentTodo(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentTodo implements AssesmentState {
  const factory _FetchAssesmentTodo(
          {required final List<AssessmentModel> assesment}) =
      _$FetchAssesmentTodoImpl;

  List<AssessmentModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchAssesmentTodoImplCopyWith<_$FetchAssesmentTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentOverdueImplCopyWith<$Res> {
  factory _$$FetchAssesmentOverdueImplCopyWith(
          _$FetchAssesmentOverdueImpl value,
          $Res Function(_$FetchAssesmentOverdueImpl) then) =
      __$$FetchAssesmentOverdueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssessmentModel> assesment});
}

/// @nodoc
class __$$FetchAssesmentOverdueImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$FetchAssesmentOverdueImpl>
    implements _$$FetchAssesmentOverdueImplCopyWith<$Res> {
  __$$FetchAssesmentOverdueImplCopyWithImpl(_$FetchAssesmentOverdueImpl _value,
      $Res Function(_$FetchAssesmentOverdueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchAssesmentOverdueImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<AssessmentModel>,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentOverdueImpl implements _FetchAssesmentOverdue {
  const _$FetchAssesmentOverdueImpl(
      {required final List<AssessmentModel> assesment})
      : _assesment = assesment;

  final List<AssessmentModel> _assesment;
  @override
  List<AssessmentModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'AssesmentState.fetchAssesmentOverDue(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentOverdueImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentOverdueImplCopyWith<_$FetchAssesmentOverdueImpl>
      get copyWith => __$$FetchAssesmentOverdueImplCopyWithImpl<
          _$FetchAssesmentOverdueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchAssesmentOverDue(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchAssesmentOverDue?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentOverDue != null) {
      return fetchAssesmentOverDue(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentOverDue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentOverDue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentOverDue != null) {
      return fetchAssesmentOverDue(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentOverdue implements AssesmentState {
  const factory _FetchAssesmentOverdue(
          {required final List<AssessmentModel> assesment}) =
      _$FetchAssesmentOverdueImpl;

  List<AssessmentModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchAssesmentOverdueImplCopyWith<_$FetchAssesmentOverdueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentsCompletedImplCopyWith<$Res> {
  factory _$$FetchAssesmentsCompletedImplCopyWith(
          _$FetchAssesmentsCompletedImpl value,
          $Res Function(_$FetchAssesmentsCompletedImpl) then) =
      __$$FetchAssesmentsCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssessmentModel> assesment});
}

/// @nodoc
class __$$FetchAssesmentsCompletedImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$FetchAssesmentsCompletedImpl>
    implements _$$FetchAssesmentsCompletedImplCopyWith<$Res> {
  __$$FetchAssesmentsCompletedImplCopyWithImpl(
      _$FetchAssesmentsCompletedImpl _value,
      $Res Function(_$FetchAssesmentsCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchAssesmentsCompletedImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<AssessmentModel>,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentsCompletedImpl implements _FetchAssesmentsCompleted {
  const _$FetchAssesmentsCompletedImpl(
      {required final List<AssessmentModel> assesment})
      : _assesment = assesment;

  final List<AssessmentModel> _assesment;
  @override
  List<AssessmentModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'AssesmentState.fetchAssesmentCompleted(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentsCompletedImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentsCompletedImplCopyWith<_$FetchAssesmentsCompletedImpl>
      get copyWith => __$$FetchAssesmentsCompletedImplCopyWithImpl<
          _$FetchAssesmentsCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchAssesmentCompleted(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchAssesmentCompleted?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentCompleted != null) {
      return fetchAssesmentCompleted(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentCompleted != null) {
      return fetchAssesmentCompleted(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentsCompleted implements AssesmentState {
  const factory _FetchAssesmentsCompleted(
          {required final List<AssessmentModel> assesment}) =
      _$FetchAssesmentsCompletedImpl;

  List<AssessmentModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchAssesmentsCompletedImplCopyWith<_$FetchAssesmentsCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentBtIdImplCopyWith<$Res> {
  factory _$$FetchAssesmentBtIdImplCopyWith(_$FetchAssesmentBtIdImpl value,
          $Res Function(_$FetchAssesmentBtIdImpl) then) =
      __$$FetchAssesmentBtIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssessmentModel assesment});
}

/// @nodoc
class __$$FetchAssesmentBtIdImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$FetchAssesmentBtIdImpl>
    implements _$$FetchAssesmentBtIdImplCopyWith<$Res> {
  __$$FetchAssesmentBtIdImplCopyWithImpl(_$FetchAssesmentBtIdImpl _value,
      $Res Function(_$FetchAssesmentBtIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchAssesmentBtIdImpl(
      assesment: null == assesment
          ? _value.assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentBtIdImpl implements _FetchAssesmentBtId {
  const _$FetchAssesmentBtIdImpl({required this.assesment});

  @override
  final AssessmentModel assesment;

  @override
  String toString() {
    return 'AssesmentState.fetchAssesmentBtId(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentBtIdImpl &&
            (identical(other.assesment, assesment) ||
                other.assesment == assesment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assesment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentBtIdImplCopyWith<_$FetchAssesmentBtIdImpl> get copyWith =>
      __$$FetchAssesmentBtIdImplCopyWithImpl<_$FetchAssesmentBtIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchAssesmentBtId(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchAssesmentBtId?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentBtId != null) {
      return fetchAssesmentBtId(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentBtId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentBtId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentBtId != null) {
      return fetchAssesmentBtId(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentBtId implements AssesmentState {
  const factory _FetchAssesmentBtId(
      {required final AssessmentModel assesment}) = _$FetchAssesmentBtIdImpl;

  AssessmentModel get assesment;
  @JsonKey(ignore: true)
  _$$FetchAssesmentBtIdImplCopyWith<_$FetchAssesmentBtIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAssesmentforMyClassAsTeacherImplCopyWith<$Res> {
  factory _$$FetchAssesmentforMyClassAsTeacherImplCopyWith(
          _$FetchAssesmentforMyClassAsTeacherImpl value,
          $Res Function(_$FetchAssesmentforMyClassAsTeacherImpl) then) =
      __$$FetchAssesmentforMyClassAsTeacherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssessmentModel> assesment});
}

/// @nodoc
class __$$FetchAssesmentforMyClassAsTeacherImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res,
        _$FetchAssesmentforMyClassAsTeacherImpl>
    implements _$$FetchAssesmentforMyClassAsTeacherImplCopyWith<$Res> {
  __$$FetchAssesmentforMyClassAsTeacherImplCopyWithImpl(
      _$FetchAssesmentforMyClassAsTeacherImpl _value,
      $Res Function(_$FetchAssesmentforMyClassAsTeacherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchAssesmentforMyClassAsTeacherImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<AssessmentModel>,
    ));
  }
}

/// @nodoc

class _$FetchAssesmentforMyClassAsTeacherImpl
    implements _FetchAssesmentforMyClassAsTeacher {
  const _$FetchAssesmentforMyClassAsTeacherImpl(
      {required final List<AssessmentModel> assesment})
      : _assesment = assesment;

  final List<AssessmentModel> _assesment;
  @override
  List<AssessmentModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'AssesmentState.fetchAssesmentForMyClassAsTeacher(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAssesmentforMyClassAsTeacherImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAssesmentforMyClassAsTeacherImplCopyWith<
          _$FetchAssesmentforMyClassAsTeacherImpl>
      get copyWith => __$$FetchAssesmentforMyClassAsTeacherImplCopyWithImpl<
          _$FetchAssesmentforMyClassAsTeacherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchAssesmentForMyClassAsTeacher(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchAssesmentForMyClassAsTeacher?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentForMyClassAsTeacher != null) {
      return fetchAssesmentForMyClassAsTeacher(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentForMyClassAsTeacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchAssesmentForMyClassAsTeacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchAssesmentForMyClassAsTeacher != null) {
      return fetchAssesmentForMyClassAsTeacher(this);
    }
    return orElse();
  }
}

abstract class _FetchAssesmentforMyClassAsTeacher implements AssesmentState {
  const factory _FetchAssesmentforMyClassAsTeacher(
          {required final List<AssessmentModel> assesment}) =
      _$FetchAssesmentforMyClassAsTeacherImpl;

  List<AssessmentModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchAssesmentforMyClassAsTeacherImplCopyWith<
          _$FetchAssesmentforMyClassAsTeacherImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchOngoingassesmentAsTeacherImplCopyWith<$Res> {
  factory _$$FetchOngoingassesmentAsTeacherImplCopyWith(
          _$FetchOngoingassesmentAsTeacherImpl value,
          $Res Function(_$FetchOngoingassesmentAsTeacherImpl) then) =
      __$$FetchOngoingassesmentAsTeacherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssessmentModel> assesment});
}

/// @nodoc
class __$$FetchOngoingassesmentAsTeacherImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res,
        _$FetchOngoingassesmentAsTeacherImpl>
    implements _$$FetchOngoingassesmentAsTeacherImplCopyWith<$Res> {
  __$$FetchOngoingassesmentAsTeacherImplCopyWithImpl(
      _$FetchOngoingassesmentAsTeacherImpl _value,
      $Res Function(_$FetchOngoingassesmentAsTeacherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchOngoingassesmentAsTeacherImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<AssessmentModel>,
    ));
  }
}

/// @nodoc

class _$FetchOngoingassesmentAsTeacherImpl
    implements _FetchOngoingassesmentAsTeacher {
  const _$FetchOngoingassesmentAsTeacherImpl(
      {required final List<AssessmentModel> assesment})
      : _assesment = assesment;

  final List<AssessmentModel> _assesment;
  @override
  List<AssessmentModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'AssesmentState.fetchOngoingAssesmentAsTeacher(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOngoingassesmentAsTeacherImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOngoingassesmentAsTeacherImplCopyWith<
          _$FetchOngoingassesmentAsTeacherImpl>
      get copyWith => __$$FetchOngoingassesmentAsTeacherImplCopyWithImpl<
          _$FetchOngoingassesmentAsTeacherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchOngoingAssesmentAsTeacher(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchOngoingAssesmentAsTeacher?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchOngoingAssesmentAsTeacher != null) {
      return fetchOngoingAssesmentAsTeacher(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchOngoingAssesmentAsTeacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchOngoingAssesmentAsTeacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchOngoingAssesmentAsTeacher != null) {
      return fetchOngoingAssesmentAsTeacher(this);
    }
    return orElse();
  }
}

abstract class _FetchOngoingassesmentAsTeacher implements AssesmentState {
  const factory _FetchOngoingassesmentAsTeacher(
          {required final List<AssessmentModel> assesment}) =
      _$FetchOngoingassesmentAsTeacherImpl;

  List<AssessmentModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchOngoingassesmentAsTeacherImplCopyWith<
          _$FetchOngoingassesmentAsTeacherImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchdraftAssesmentImplCopyWith<$Res> {
  factory _$$FetchdraftAssesmentImplCopyWith(_$FetchdraftAssesmentImpl value,
          $Res Function(_$FetchdraftAssesmentImpl) then) =
      __$$FetchdraftAssesmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AssessmentModel> assesment});
}

/// @nodoc
class __$$FetchdraftAssesmentImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$FetchdraftAssesmentImpl>
    implements _$$FetchdraftAssesmentImplCopyWith<$Res> {
  __$$FetchdraftAssesmentImplCopyWithImpl(_$FetchdraftAssesmentImpl _value,
      $Res Function(_$FetchdraftAssesmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assesment = null,
  }) {
    return _then(_$FetchdraftAssesmentImpl(
      assesment: null == assesment
          ? _value._assesment
          : assesment // ignore: cast_nullable_to_non_nullable
              as List<AssessmentModel>,
    ));
  }
}

/// @nodoc

class _$FetchdraftAssesmentImpl implements _FetchdraftAssesment {
  const _$FetchdraftAssesmentImpl(
      {required final List<AssessmentModel> assesment})
      : _assesment = assesment;

  final List<AssessmentModel> _assesment;
  @override
  List<AssessmentModel> get assesment {
    if (_assesment is EqualUnmodifiableListView) return _assesment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assesment);
  }

  @override
  String toString() {
    return 'AssesmentState.fetchdraftAssesment(assesment: $assesment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchdraftAssesmentImpl &&
            const DeepCollectionEquality()
                .equals(other._assesment, _assesment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assesment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchdraftAssesmentImplCopyWith<_$FetchdraftAssesmentImpl> get copyWith =>
      __$$FetchdraftAssesmentImplCopyWithImpl<_$FetchdraftAssesmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return fetchdraftAssesment(assesment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return fetchdraftAssesment?.call(assesment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchdraftAssesment != null) {
      return fetchdraftAssesment(assesment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return fetchdraftAssesment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return fetchdraftAssesment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (fetchdraftAssesment != null) {
      return fetchdraftAssesment(this);
    }
    return orElse();
  }
}

abstract class _FetchdraftAssesment implements AssesmentState {
  const factory _FetchdraftAssesment(
          {required final List<AssessmentModel> assesment}) =
      _$FetchdraftAssesmentImpl;

  List<AssessmentModel> get assesment;
  @JsonKey(ignore: true)
  _$$FetchdraftAssesmentImplCopyWith<_$FetchdraftAssesmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssessmentFailureImplCopyWith<$Res> {
  factory _$$AssessmentFailureImplCopyWith(_$AssessmentFailureImpl value,
          $Res Function(_$AssessmentFailureImpl) then) =
      __$$AssessmentFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AssessmentFailureImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$AssessmentFailureImpl>
    implements _$$AssessmentFailureImplCopyWith<$Res> {
  __$$AssessmentFailureImplCopyWithImpl(_$AssessmentFailureImpl _value,
      $Res Function(_$AssessmentFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AssessmentFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssessmentFailureImpl implements _AssessmentFailure {
  const _$AssessmentFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AssesmentState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentFailureImplCopyWith<_$AssessmentFailureImpl> get copyWith =>
      __$$AssessmentFailureImplCopyWithImpl<_$AssessmentFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
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
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AssessmentFailure implements AssesmentState {
  const factory _AssessmentFailure({required final String error}) =
      _$AssessmentFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$AssessmentFailureImplCopyWith<_$AssessmentFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImportQuestionBankSuccessImplCopyWith<$Res> {
  factory _$$ImportQuestionBankSuccessImplCopyWith(
          _$ImportQuestionBankSuccessImpl value,
          $Res Function(_$ImportQuestionBankSuccessImpl) then) =
      __$$ImportQuestionBankSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int success});
}

/// @nodoc
class __$$ImportQuestionBankSuccessImplCopyWithImpl<$Res>
    extends _$AssesmentStateCopyWithImpl<$Res, _$ImportQuestionBankSuccessImpl>
    implements _$$ImportQuestionBankSuccessImplCopyWith<$Res> {
  __$$ImportQuestionBankSuccessImplCopyWithImpl(
      _$ImportQuestionBankSuccessImpl _value,
      $Res Function(_$ImportQuestionBankSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$ImportQuestionBankSuccessImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImportQuestionBankSuccessImpl implements _ImportQuestionBankSuccess {
  const _$ImportQuestionBankSuccessImpl({required this.success});

  @override
  final int success;

  @override
  String toString() {
    return 'AssesmentState.importQuestionBankSuccess(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImportQuestionBankSuccessImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImportQuestionBankSuccessImplCopyWith<_$ImportQuestionBankSuccessImpl>
      get copyWith => __$$ImportQuestionBankSuccessImplCopyWithImpl<
          _$ImportQuestionBankSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noInternet,
    required TResult Function(AssessmentModel assesment) createdAssesment,
    required TResult Function(List<AssessmentModel> assesment) fetchAssesment,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClass,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentTodo,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentOverDue,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentCompleted,
    required TResult Function(AssessmentModel assesment) fetchAssesmentBtId,
    required TResult Function(List<AssessmentModel> assesment)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(List<AssessmentModel> assesment)
        fetchdraftAssesment,
    required TResult Function(String error) error,
    required TResult Function(int success) importQuestionBankSuccess,
  }) {
    return importQuestionBankSuccess(success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noInternet,
    TResult? Function(AssessmentModel assesment)? createdAssesment,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClass,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult? Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult? Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult? Function(String error)? error,
    TResult? Function(int success)? importQuestionBankSuccess,
  }) {
    return importQuestionBankSuccess?.call(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noInternet,
    TResult Function(AssessmentModel assesment)? createdAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesment,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentForMyClass,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentTodo,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentOverDue,
    TResult Function(List<AssessmentModel> assesment)? fetchAssesmentCompleted,
    TResult Function(AssessmentModel assesment)? fetchAssesmentBtId,
    TResult Function(List<AssessmentModel> assesment)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(List<AssessmentModel> assesment)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(List<AssessmentModel> assesment)? fetchdraftAssesment,
    TResult Function(String error)? error,
    TResult Function(int success)? importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (importQuestionBankSuccess != null) {
      return importQuestionBankSuccess(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_CreatedAssesment value) createdAssesment,
    required TResult Function(_FetchAssesment value) fetchAssesment,
    required TResult Function(_FetchAssesmentForMyClass value)
        fetchAssesmentForMyClass,
    required TResult Function(_FetchAssesmentTodo value) fetchAssesmentTodo,
    required TResult Function(_FetchAssesmentOverdue value)
        fetchAssesmentOverDue,
    required TResult Function(_FetchAssesmentsCompleted value)
        fetchAssesmentCompleted,
    required TResult Function(_FetchAssesmentBtId value) fetchAssesmentBtId,
    required TResult Function(_FetchAssesmentforMyClassAsTeacher value)
        fetchAssesmentForMyClassAsTeacher,
    required TResult Function(_FetchOngoingassesmentAsTeacher value)
        fetchOngoingAssesmentAsTeacher,
    required TResult Function(_FetchdraftAssesment value) fetchdraftAssesment,
    required TResult Function(_AssessmentFailure value) error,
    required TResult Function(_ImportQuestionBankSuccess value)
        importQuestionBankSuccess,
  }) {
    return importQuestionBankSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_CreatedAssesment value)? createdAssesment,
    TResult? Function(_FetchAssesment value)? fetchAssesment,
    TResult? Function(_FetchAssesmentForMyClass value)?
        fetchAssesmentForMyClass,
    TResult? Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult? Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult? Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult? Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult? Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult? Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult? Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult? Function(_AssessmentFailure value)? error,
    TResult? Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
  }) {
    return importQuestionBankSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_CreatedAssesment value)? createdAssesment,
    TResult Function(_FetchAssesment value)? fetchAssesment,
    TResult Function(_FetchAssesmentForMyClass value)? fetchAssesmentForMyClass,
    TResult Function(_FetchAssesmentTodo value)? fetchAssesmentTodo,
    TResult Function(_FetchAssesmentOverdue value)? fetchAssesmentOverDue,
    TResult Function(_FetchAssesmentsCompleted value)? fetchAssesmentCompleted,
    TResult Function(_FetchAssesmentBtId value)? fetchAssesmentBtId,
    TResult Function(_FetchAssesmentforMyClassAsTeacher value)?
        fetchAssesmentForMyClassAsTeacher,
    TResult Function(_FetchOngoingassesmentAsTeacher value)?
        fetchOngoingAssesmentAsTeacher,
    TResult Function(_FetchdraftAssesment value)? fetchdraftAssesment,
    TResult Function(_AssessmentFailure value)? error,
    TResult Function(_ImportQuestionBankSuccess value)?
        importQuestionBankSuccess,
    required TResult orElse(),
  }) {
    if (importQuestionBankSuccess != null) {
      return importQuestionBankSuccess(this);
    }
    return orElse();
  }
}

abstract class _ImportQuestionBankSuccess implements AssesmentState {
  const factory _ImportQuestionBankSuccess({required final int success}) =
      _$ImportQuestionBankSuccessImpl;

  int get success;
  @JsonKey(ignore: true)
  _$$ImportQuestionBankSuccessImplCopyWith<_$ImportQuestionBankSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
