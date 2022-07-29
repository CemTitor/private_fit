// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ActivityDataModel activityDataModel) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ActivityDataModel activityDataModel)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ActivityDataModel activityDataModel)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEventCopyWith<$Res> {
  factory $ActivityEventCopyWith(
          ActivityEvent value, $Res Function(ActivityEvent) then) =
      _$ActivityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivityEventCopyWithImpl<$Res>
    implements $ActivityEventCopyWith<$Res> {
  _$ActivityEventCopyWithImpl(this._value, this._then);

  final ActivityEvent _value;
  // ignore: unused_field
  final $Res Function(ActivityEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$ActivityEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ActivityEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ActivityDataModel activityDataModel) save,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ActivityDataModel activityDataModel)? save,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ActivityDataModel activityDataModel)? save,
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
    required TResult Function(_save value) save,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ActivityEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_saveCopyWith<$Res> {
  factory _$$_saveCopyWith(_$_save value, $Res Function(_$_save) then) =
      __$$_saveCopyWithImpl<$Res>;
  $Res call({ActivityDataModel activityDataModel});

  $ActivityDataModelCopyWith<$Res> get activityDataModel;
}

/// @nodoc
class __$$_saveCopyWithImpl<$Res> extends _$ActivityEventCopyWithImpl<$Res>
    implements _$$_saveCopyWith<$Res> {
  __$$_saveCopyWithImpl(_$_save _value, $Res Function(_$_save) _then)
      : super(_value, (v) => _then(v as _$_save));

  @override
  _$_save get _value => super._value as _$_save;

  @override
  $Res call({
    Object? activityDataModel = freezed,
  }) {
    return _then(_$_save(
      activityDataModel == freezed
          ? _value.activityDataModel
          : activityDataModel // ignore: cast_nullable_to_non_nullable
              as ActivityDataModel,
    ));
  }

  @override
  $ActivityDataModelCopyWith<$Res> get activityDataModel {
    return $ActivityDataModelCopyWith<$Res>(_value.activityDataModel, (value) {
      return _then(_value.copyWith(activityDataModel: value));
    });
  }
}

/// @nodoc

class _$_save implements _save {
  const _$_save(this.activityDataModel);

  @override
  final ActivityDataModel activityDataModel;

  @override
  String toString() {
    return 'ActivityEvent.save(activityDataModel: $activityDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_save &&
            const DeepCollectionEquality()
                .equals(other.activityDataModel, activityDataModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(activityDataModel));

  @JsonKey(ignore: true)
  @override
  _$$_saveCopyWith<_$_save> get copyWith =>
      __$$_saveCopyWithImpl<_$_save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ActivityDataModel activityDataModel) save,
  }) {
    return save(activityDataModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ActivityDataModel activityDataModel)? save,
  }) {
    return save?.call(activityDataModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ActivityDataModel activityDataModel)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(activityDataModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _save implements ActivityEvent {
  const factory _save(final ActivityDataModel activityDataModel) = _$_save;

  ActivityDataModel get activityDataModel => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_saveCopyWith<_$_save> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivityState {
  ActivityDataModel get activityDataModel => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get liveData => throw _privateConstructorUsedError;
  Option<Either<AtPlatformFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res>;
  $Res call(
      {ActivityDataModel activityDataModel,
      bool showErrorMessages,
      bool isSaving,
      bool liveData,
      Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption});

  $ActivityDataModelCopyWith<$Res> get activityDataModel;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  final ActivityState _value;
  // ignore: unused_field
  final $Res Function(ActivityState) _then;

  @override
  $Res call({
    Object? activityDataModel = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? liveData = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      activityDataModel: activityDataModel == freezed
          ? _value.activityDataModel
          : activityDataModel // ignore: cast_nullable_to_non_nullable
              as ActivityDataModel,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      liveData: liveData == freezed
          ? _value.liveData
          : liveData // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AtPlatformFailure, Unit>>,
    ));
  }

  @override
  $ActivityDataModelCopyWith<$Res> get activityDataModel {
    return $ActivityDataModelCopyWith<$Res>(_value.activityDataModel, (value) {
      return _then(_value.copyWith(activityDataModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_ActivityStateCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$$_ActivityStateCopyWith(
          _$_ActivityState value, $Res Function(_$_ActivityState) then) =
      __$$_ActivityStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ActivityDataModel activityDataModel,
      bool showErrorMessages,
      bool isSaving,
      bool liveData,
      Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ActivityDataModelCopyWith<$Res> get activityDataModel;
}

/// @nodoc
class __$$_ActivityStateCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$$_ActivityStateCopyWith<$Res> {
  __$$_ActivityStateCopyWithImpl(
      _$_ActivityState _value, $Res Function(_$_ActivityState) _then)
      : super(_value, (v) => _then(v as _$_ActivityState));

  @override
  _$_ActivityState get _value => super._value as _$_ActivityState;

  @override
  $Res call({
    Object? activityDataModel = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? liveData = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_ActivityState(
      activityDataModel: activityDataModel == freezed
          ? _value.activityDataModel
          : activityDataModel // ignore: cast_nullable_to_non_nullable
              as ActivityDataModel,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      liveData: liveData == freezed
          ? _value.liveData
          : liveData // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AtPlatformFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ActivityState implements _ActivityState {
  const _$_ActivityState(
      {required this.activityDataModel,
      required this.showErrorMessages,
      required this.isSaving,
      required this.liveData,
      required this.saveFailureOrSuccessOption});

  @override
  final ActivityDataModel activityDataModel;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool liveData;
  @override
  final Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ActivityState(activityDataModel: $activityDataModel, showErrorMessages: $showErrorMessages, isSaving: $isSaving, liveData: $liveData, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityState &&
            const DeepCollectionEquality()
                .equals(other.activityDataModel, activityDataModel) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.liveData, liveData) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activityDataModel),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(liveData),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_ActivityStateCopyWith<_$_ActivityState> get copyWith =>
      __$$_ActivityStateCopyWithImpl<_$_ActivityState>(this, _$identity);
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {required final ActivityDataModel activityDataModel,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool liveData,
      required final Option<Either<AtPlatformFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ActivityState;

  @override
  ActivityDataModel get activityDataModel => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get liveData => throw _privateConstructorUsedError;
  @override
  Option<Either<AtPlatformFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityStateCopyWith<_$_ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}
