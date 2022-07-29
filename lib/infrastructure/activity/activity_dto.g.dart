// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActivityDto _$$_ActivityDtoFromJson(Map<String, dynamic> json) =>
    _$_ActivityDto(
      activityTitle: json['activityTitle'] as String?,
      activityDescription: json['activityDescription'] as String?,
      activityDuration: json['activityDuration'] as int? ?? 30,
      stepsDuringActivity: json['stepsDuringActivity'] as int?,
      caloriesBurned: json['caloriesBurned'] as int?,
      activityStartTime: DateTime.parse(json['activityStartTime'] as String),
    );

Map<String, dynamic> _$$_ActivityDtoToJson(_$_ActivityDto instance) =>
    <String, dynamic>{
      'activityTitle': instance.activityTitle,
      'activityDescription': instance.activityDescription,
      'activityDuration': instance.activityDuration,
      'stepsDuringActivity': instance.stepsDuringActivity,
      'caloriesBurned': instance.caloriesBurned,
      'activityStartTime': instance.activityStartTime.toIso8601String(),
    };
