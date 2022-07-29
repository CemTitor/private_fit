// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityDto _$ActivityDtoFromJson(Map<String, dynamic> json) {
  return _ActivityDto.fromJson(json);
}

/// @nodoc
mixin _$ActivityDto {
  String? get activityTitle => throw _privateConstructorUsedError;
  String? get activityDescription => throw _privateConstructorUsedError;
  int get activityDuration => throw _privateConstructorUsedError;
  int? get stepsDuringActivity => throw _privateConstructorUsedError;
  int? get caloriesBurned =>
      throw _privateConstructorUsedError; // ActivityType activityType,
  DateTime get activityStartTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityDtoCopyWith<ActivityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityDtoCopyWith<$Res> {
  factory $ActivityDtoCopyWith(
          ActivityDto value, $Res Function(ActivityDto) then) =
      _$ActivityDtoCopyWithImpl<$Res>;
  $Res call(
      {String? activityTitle,
      String? activityDescription,
      int activityDuration,
      int? stepsDuringActivity,
      int? caloriesBurned,
      DateTime activityStartTime});
}

/// @nodoc
class _$ActivityDtoCopyWithImpl<$Res> implements $ActivityDtoCopyWith<$Res> {
  _$ActivityDtoCopyWithImpl(this._value, this._then);

  final ActivityDto _value;
  // ignore: unused_field
  final $Res Function(ActivityDto) _then;

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
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ActivityDtoCopyWith<$Res>
    implements $ActivityDtoCopyWith<$Res> {
  factory _$$_ActivityDtoCopyWith(
          _$_ActivityDto value, $Res Function(_$_ActivityDto) then) =
      __$$_ActivityDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? activityTitle,
      String? activityDescription,
      int activityDuration,
      int? stepsDuringActivity,
      int? caloriesBurned,
      DateTime activityStartTime});
}

/// @nodoc
class __$$_ActivityDtoCopyWithImpl<$Res> extends _$ActivityDtoCopyWithImpl<$Res>
    implements _$$_ActivityDtoCopyWith<$Res> {
  __$$_ActivityDtoCopyWithImpl(
      _$_ActivityDto _value, $Res Function(_$_ActivityDto) _then)
      : super(_value, (v) => _then(v as _$_ActivityDto));

  @override
  _$_ActivityDto get _value => super._value as _$_ActivityDto;

  @override
  $Res call({
    Object? activityTitle = freezed,
    Object? activityDescription = freezed,
    Object? activityDuration = freezed,
    Object? stepsDuringActivity = freezed,
    Object? caloriesBurned = freezed,
    Object? activityStartTime = freezed,
  }) {
    return _then(_$_ActivityDto(
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
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivityDto extends _ActivityDto {
  _$_ActivityDto(
      {this.activityTitle,
      this.activityDescription,
      this.activityDuration = 30,
      this.stepsDuringActivity,
      this.caloriesBurned,
      required this.activityStartTime})
      : super._();

  factory _$_ActivityDto.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityDtoFromJson(json);

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
  final DateTime activityStartTime;

  @override
  String toString() {
    return 'ActivityDto(activityTitle: $activityTitle, activityDescription: $activityDescription, activityDuration: $activityDuration, stepsDuringActivity: $stepsDuringActivity, caloriesBurned: $caloriesBurned, activityStartTime: $activityStartTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityDto &&
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

  @JsonKey(ignore: true)
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
  _$$_ActivityDtoCopyWith<_$_ActivityDto> get copyWith =>
      __$$_ActivityDtoCopyWithImpl<_$_ActivityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityDtoToJson(this);
  }
}

abstract class _ActivityDto extends ActivityDto {
  factory _ActivityDto(
      {final String? activityTitle,
      final String? activityDescription,
      final int activityDuration,
      final int? stepsDuringActivity,
      final int? caloriesBurned,
      required final DateTime activityStartTime}) = _$_ActivityDto;
  _ActivityDto._() : super._();

  factory _ActivityDto.fromJson(Map<String, dynamic> json) =
      _$_ActivityDto.fromJson;

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
  DateTime get activityStartTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityDtoCopyWith<_$_ActivityDto> get copyWith =>
      throw _privateConstructorUsedError;
}
