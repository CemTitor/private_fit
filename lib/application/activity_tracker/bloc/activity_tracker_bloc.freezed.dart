// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_tracker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityTrackerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stepDataOnSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stepDataOnSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stepDataOnSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StepDataOnSuccess value) stepDataOnSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StepDataOnSuccess value)? stepDataOnSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StepDataOnSuccess value)? stepDataOnSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityTrackerEventCopyWith<$Res> {
  factory $ActivityTrackerEventCopyWith(ActivityTrackerEvent value,
          $Res Function(ActivityTrackerEvent) then) =
      _$ActivityTrackerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivityTrackerEventCopyWithImpl<$Res>
    implements $ActivityTrackerEventCopyWith<$Res> {
  _$ActivityTrackerEventCopyWithImpl(this._value, this._then);

  final ActivityTrackerEvent _value;
  // ignore: unused_field
  final $Res Function(ActivityTrackerEvent) _then;
}

/// @nodoc
abstract class _$$_StepDataOnSuccessCopyWith<$Res> {
  factory _$$_StepDataOnSuccessCopyWith(_$_StepDataOnSuccess value,
          $Res Function(_$_StepDataOnSuccess) then) =
      __$$_StepDataOnSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StepDataOnSuccessCopyWithImpl<$Res>
    extends _$ActivityTrackerEventCopyWithImpl<$Res>
    implements _$$_StepDataOnSuccessCopyWith<$Res> {
  __$$_StepDataOnSuccessCopyWithImpl(
      _$_StepDataOnSuccess _value, $Res Function(_$_StepDataOnSuccess) _then)
      : super(_value, (v) => _then(v as _$_StepDataOnSuccess));

  @override
  _$_StepDataOnSuccess get _value => super._value as _$_StepDataOnSuccess;
}

/// @nodoc

class _$_StepDataOnSuccess implements _StepDataOnSuccess {
  const _$_StepDataOnSuccess();

  @override
  String toString() {
    return 'ActivityTrackerEvent.stepDataOnSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StepDataOnSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stepDataOnSuccess,
  }) {
    return stepDataOnSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stepDataOnSuccess,
  }) {
    return stepDataOnSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stepDataOnSuccess,
    required TResult orElse(),
  }) {
    if (stepDataOnSuccess != null) {
      return stepDataOnSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StepDataOnSuccess value) stepDataOnSuccess,
  }) {
    return stepDataOnSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StepDataOnSuccess value)? stepDataOnSuccess,
  }) {
    return stepDataOnSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StepDataOnSuccess value)? stepDataOnSuccess,
    required TResult orElse(),
  }) {
    if (stepDataOnSuccess != null) {
      return stepDataOnSuccess(this);
    }
    return orElse();
  }
}

abstract class _StepDataOnSuccess implements ActivityTrackerEvent {
  const factory _StepDataOnSuccess() = _$_StepDataOnSuccess;
}

/// @nodoc
mixin _$ActivityTrackerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ActivityTrackerFailures activityTrackerfailures)
        failureGettingStep,
    required TResult Function(FetchedStep fetchedStep) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ActivityTrackerFailures activityTrackerfailures)?
        failureGettingStep,
    TResult Function(FetchedStep fetchedStep)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ActivityTrackerFailures activityTrackerfailures)?
        failureGettingStep,
    TResult Function(FetchedStep fetchedStep)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FailureGettingStep value) failureGettingStep,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingStep value)? failureGettingStep,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingStep value)? failureGettingStep,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityTrackerStateCopyWith<$Res> {
  factory $ActivityTrackerStateCopyWith(ActivityTrackerState value,
          $Res Function(ActivityTrackerState) then) =
      _$ActivityTrackerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivityTrackerStateCopyWithImpl<$Res>
    implements $ActivityTrackerStateCopyWith<$Res> {
  _$ActivityTrackerStateCopyWithImpl(this._value, this._then);

  final ActivityTrackerState _value;
  // ignore: unused_field
  final $Res Function(ActivityTrackerState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ActivityTrackerStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ActivityTrackerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ActivityTrackerFailures activityTrackerfailures)
        failureGettingStep,
    required TResult Function(FetchedStep fetchedStep) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ActivityTrackerFailures activityTrackerfailures)?
        failureGettingStep,
    TResult Function(FetchedStep fetchedStep)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ActivityTrackerFailures activityTrackerfailures)?
        failureGettingStep,
    TResult Function(FetchedStep fetchedStep)? loadSuccess,
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
    required TResult Function(_FailureGettingStep value) failureGettingStep,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingStep value)? failureGettingStep,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingStep value)? failureGettingStep,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ActivityTrackerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FailureGettingStepCopyWith<$Res> {
  factory _$$_FailureGettingStepCopyWith(_$_FailureGettingStep value,
          $Res Function(_$_FailureGettingStep) then) =
      __$$_FailureGettingStepCopyWithImpl<$Res>;
  $Res call({ActivityTrackerFailures activityTrackerfailures});

  $ActivityTrackerFailuresCopyWith<$Res> get activityTrackerfailures;
}

/// @nodoc
class __$$_FailureGettingStepCopyWithImpl<$Res>
    extends _$ActivityTrackerStateCopyWithImpl<$Res>
    implements _$$_FailureGettingStepCopyWith<$Res> {
  __$$_FailureGettingStepCopyWithImpl(
      _$_FailureGettingStep _value, $Res Function(_$_FailureGettingStep) _then)
      : super(_value, (v) => _then(v as _$_FailureGettingStep));

  @override
  _$_FailureGettingStep get _value => super._value as _$_FailureGettingStep;

  @override
  $Res call({
    Object? activityTrackerfailures = freezed,
  }) {
    return _then(_$_FailureGettingStep(
      activityTrackerfailures == freezed
          ? _value.activityTrackerfailures
          : activityTrackerfailures // ignore: cast_nullable_to_non_nullable
              as ActivityTrackerFailures,
    ));
  }

  @override
  $ActivityTrackerFailuresCopyWith<$Res> get activityTrackerfailures {
    return $ActivityTrackerFailuresCopyWith<$Res>(
        _value.activityTrackerfailures, (value) {
      return _then(_value.copyWith(activityTrackerfailures: value));
    });
  }
}

/// @nodoc

class _$_FailureGettingStep implements _FailureGettingStep {
  const _$_FailureGettingStep(this.activityTrackerfailures);

  @override
  final ActivityTrackerFailures activityTrackerfailures;

  @override
  String toString() {
    return 'ActivityTrackerState.failureGettingStep(activityTrackerfailures: $activityTrackerfailures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureGettingStep &&
            const DeepCollectionEquality().equals(
                other.activityTrackerfailures, activityTrackerfailures));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(activityTrackerfailures));

  @JsonKey(ignore: true)
  @override
  _$$_FailureGettingStepCopyWith<_$_FailureGettingStep> get copyWith =>
      __$$_FailureGettingStepCopyWithImpl<_$_FailureGettingStep>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ActivityTrackerFailures activityTrackerfailures)
        failureGettingStep,
    required TResult Function(FetchedStep fetchedStep) loadSuccess,
  }) {
    return failureGettingStep(activityTrackerfailures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ActivityTrackerFailures activityTrackerfailures)?
        failureGettingStep,
    TResult Function(FetchedStep fetchedStep)? loadSuccess,
  }) {
    return failureGettingStep?.call(activityTrackerfailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ActivityTrackerFailures activityTrackerfailures)?
        failureGettingStep,
    TResult Function(FetchedStep fetchedStep)? loadSuccess,
    required TResult orElse(),
  }) {
    if (failureGettingStep != null) {
      return failureGettingStep(activityTrackerfailures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FailureGettingStep value) failureGettingStep,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return failureGettingStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingStep value)? failureGettingStep,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return failureGettingStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingStep value)? failureGettingStep,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (failureGettingStep != null) {
      return failureGettingStep(this);
    }
    return orElse();
  }
}

abstract class _FailureGettingStep implements ActivityTrackerState {
  const factory _FailureGettingStep(
          final ActivityTrackerFailures activityTrackerfailures) =
      _$_FailureGettingStep;

  ActivityTrackerFailures get activityTrackerfailures =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FailureGettingStepCopyWith<_$_FailureGettingStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({FetchedStep fetchedStep});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ActivityTrackerStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? fetchedStep = freezed,
  }) {
    return _then(_$_LoadSuccess(
      fetchedStep == freezed
          ? _value.fetchedStep
          : fetchedStep // ignore: cast_nullable_to_non_nullable
              as FetchedStep,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.fetchedStep);

  @override
  final FetchedStep fetchedStep;

  @override
  String toString() {
    return 'ActivityTrackerState.loadSuccess(fetchedStep: $fetchedStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.fetchedStep, fetchedStep));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fetchedStep));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ActivityTrackerFailures activityTrackerfailures)
        failureGettingStep,
    required TResult Function(FetchedStep fetchedStep) loadSuccess,
  }) {
    return loadSuccess(fetchedStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ActivityTrackerFailures activityTrackerfailures)?
        failureGettingStep,
    TResult Function(FetchedStep fetchedStep)? loadSuccess,
  }) {
    return loadSuccess?.call(fetchedStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ActivityTrackerFailures activityTrackerfailures)?
        failureGettingStep,
    TResult Function(FetchedStep fetchedStep)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(fetchedStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FailureGettingStep value) failureGettingStep,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingStep value)? failureGettingStep,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingStep value)? failureGettingStep,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ActivityTrackerState {
  const factory _LoadSuccess(final FetchedStep fetchedStep) = _$_LoadSuccess;

  FetchedStep get fetchedStep => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
