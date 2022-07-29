import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/activity/value_objects.dart';

part 'activity_data_model.freezed.dart';

@freezed
abstract class ActivityDataModel with _$ActivityDataModel {
  // factory MenstrualDataModel.fromJson(Map<String, dynamic> json) =>
  //     _$MenstrualDataModelFromJson(json);
  factory ActivityDataModel({
    String? activityTitle,
    String? activityDescription,
    @Default(30) int activityDuration,
    int? stepsDuringActivity,
    int? caloriesBurned,
    // ActivityType activityType,
    required ActivityStartTime activityStartTime,
  }) = _ActivityDataModel;

  const ActivityDataModel._();

  factory ActivityDataModel.initialState() => ActivityDataModel(
        activityDuration: 30,
        activityStartTime: ActivityStartTime(DateTime.now()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return activityStartTime.failureOrUnit.fold(some, (_) => none());
  }
}
