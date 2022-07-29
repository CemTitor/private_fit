// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityDataModel {
  String? get activityTitle => throw _privateConstructorUsedError;
  String? get activityDescription => throw _privateConstructorUsedError;
  int get activityDuration => throw _privateConstructorUsedError;
  int? get stepsDuringActivity => throw _privateConstructorUsedError;
  int? get caloriesBurned =>
      throw _privateConstructorUsedError; // ActivityType activityType,
  ActivityStartTime get activityStartTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityDataModelCopyWith<ActivityDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityDataModelCopyWith<$Res> {
  factory $ActivityDataModelCopyWith(
          ActivityDataModel value, $Res Function(ActivityDataModel) then) =
      _$ActivityDataModelCopyWithImpl<$Res>;
  $Res call(
      {String? activityTitle,
      String? activityDescription,
      int activityDuration,
      int? stepsDuringActivity,
      int? caloriesBurned,
      ActivityStartTime activityStartTime});
}

/// @nodoc
class _$ActivityDataModelCopyWithImpl<$Res>
    implements $ActivityDataModelCopyWith<$Res> {
  _$ActivityDataModelCopyWithImpl(this._value, this._then);

  final ActivityDataModel _value;
  // ignore: unused_field
  final $Res Function(ActivityDataModel) _then;

  @override
  $Res call({
    Object? activityTitle = freezed,
    Object? activityDescription = freezed,
    Object? activityDuration = freezed,
    Object? stepsDuringActivity = freezed,
    Object? caloriesBurned = freezed,
    Object? activityStartTime = freezed,
  }) {
    return _then(_value.copyWith(
      activityTitle: activityTitle == freezed
          ? _value.activityTitle
          : activityTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      activityDescription: activityDescription == freezed
          ? _value.activityDescription
          : activityDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      activityDuration: activityDuration == freezed
          ? _value.activityDuration
          : activityDuration // ignore: cast_nullable_to_non_nullable
              as int,
      stepsDuringActivity: stepsDuringActivity == freezed
          ? _value.stepsDuringActivity
          : stepsDuringActivity // ignore: cast_nullable_to_non_nullable
              as int?,
      caloriesBurned: caloriesBurned == freezed
          ? _value.caloriesBurned
          : caloriesBurned // ignore: cast_nullable_to_non_nullable
              as int?,
      activityStartTime: activityStartTime == freezed
          ? _value.activityStartTime
          : activityStartTime // ignore: cast_nullable_to_non_nullable
              as ActivityStartTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ActivityDataModelCopyWith<$Res>
    implements $ActivityDataModelCopyWith<$Res> {
  factory _$$_ActivityDataModelCopyWith(_$_ActivityDataModel value,
          $Res Function(_$_ActivityDataModel) then) =
      __$$_ActivityDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? activityTitle,
      String? activityDescription,
      int activityDuration,
      int? stepsDuringActivity,
      int? caloriesBurned,
      ActivityStartTime activityStartTime});
}

/// @nodoc
class __$$_ActivityDataModelCopyWithImpl<$Res>
    extends _$ActivityDataModelCopyWithImpl<$Res>
    implements _$$_ActivityDataModelCopyWith<$Res> {
  __$$_ActivityDataModelCopyWithImpl(
      _$_ActivityDataModel _value, $Res Function(_$_ActivityDataModel) _then)
      : super(_value, (v) => _then(v as _$_ActivityDataModel));

  @override
  _$_ActivityDataModel get _value => super._value as _$_ActivityDataModel;

  @override
  $Res call({
    Object? activityTitle = freezed,
    Object? activityDescription = freezed,
    Object? activityDuration = freezed,
    Object? stepsDuringActivity = freezed,
    Object? caloriesBurned = freezed,
    Object? activityStartTime = freezed,
  }) {
    return _then(_$_ActivityDataModel(
      activityTitle: activityTitle == freezed
          ? _value.activityTitle
          : activityTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      activityDescription: activityDescription == freezed
          ? _value.activityDescription
          : activityDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      activityDuration: activityDuration == freezed
          ? _value.activityDuration
          : activityDuration // ignore: cast_nullable_to_non_nullable
              as int,
      stepsDuringActivity: stepsDuringActivity == freezed
          ? _value.stepsDuringActivity
          : stepsDuringActivity // ignore: cast_nullable_to_non_nullable
              as int?,
      caloriesBurned: caloriesBurned == freezed
          ? _value.caloriesBurned
          : caloriesBurned // ignore: cast_nullable_to_non_nullable
              as int?,
      activityStartTime: activityStartTime == freezed
          ? _value.activityStartTime
          : activityStartTime // ignore: cast_nullable_to_non_nullable
              as ActivityStartTime,
    ));
  }
}

/// @nodoc

class _$_ActivityDataModel extends _ActivityDataModel {
  _$_ActivityDataModel(
      {this.activityTitle,
      this.activityDescription,
      this.activityDuration = 30,
      this.stepsDuringActivity,
      this.caloriesBurned,
      required this.activityStartTime})
      : super._();

  @override
  final String? activityTitle;
  @override
  final String? activityDescription;
  @override
  @JsonKey()
  final int activityDuration;
  @override
  final int? stepsDuringActivity;
  @override
  final int? caloriesBurned;
// ActivityType activityType,
  @override
  final ActivityStartTime activityStartTime;

  @override
  String toString() {
    return 'ActivityDataModel(activityTitle: $activityTitle, activityDescription: $activityDescription, activityDuration: $activityDuration, stepsDuringActivity: $stepsDuringActivity, caloriesBurned: $caloriesBurned, activityStartTime: $activityStartTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityDataModel &&
            const DeepCollectionEquality()
                .equals(other.activityTitle, activityTitle) &&
            const DeepCollectionEquality()
                .equals(other.activityDescription, activityDescription) &&
            const DeepCollectionEquality()
                .equals(other.activityDuration, activityDuration) &&
            const DeepCollectionEquality()
                .equals(other.stepsDuringActivity, stepsDuringActivity) &&
            const DeepCollectionEquality()
                .equals(other.caloriesBurned, caloriesBurned) &&
            const DeepCollectionEquality()
                .equals(other.activityStartTime, activityStartTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activityTitle),
      const DeepCollectionEquality().hash(activityDescription),
      const DeepCollectionEquality().hash(activityDuration),
      const DeepCollectionEquality().hash(stepsDuringActivity),
      const DeepCollectionEquality().hash(caloriesBurned),
      const DeepCollectionEquality().hash(activityStartTime));

  @JsonKey(ignore: true)
  @override
  _$$_ActivityDataModelCopyWith<_$_ActivityDataModel> get copyWith =>
      __$$_ActivityDataModelCopyWithImpl<_$_ActivityDataModel>(
          this, _$identity);
}

abstract class _ActivityDataModel extends ActivityDataModel {
  factory _ActivityDataModel(
          {final String? activityTitle,
          final String? activityDescription,
          final int activityDuration,
          final int? stepsDuringActivity,
          final int? caloriesBurned,
          required final ActivityStartTime activityStartTime}) =
      _$_ActivityDataModel;
  _ActivityDataModel._() : super._();

  @override
  String? get activityTitle => throw _privateConstructorUsedError;
  @override
  String? get activityDescription => throw _privateConstructorUsedError;
  @override
  int get activityDuration => throw _privateConstructorUsedError;
  @override
  int? get stepsDuringActivity => throw _privateConstructorUsedError;
  @override
  int? get caloriesBurned => throw _privateConstructorUsedError;
  @override // ActivityType activityType,
  ActivityStartTime get activityStartTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityDataModelCopyWith<_$_ActivityDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
