import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:private_fit/domain/activity/activity_data_model.dart';
import 'package:private_fit/domain/activity/value_objects.dart';

part 'activity_dto.freezed.dart';
part 'activity_dto.g.dart';

@freezed
class ActivityDto with _$ActivityDto {
  factory ActivityDto({
    String? activityTitle,
    String? activityDescription,
    @Default(30) int activityDuration,
    int? stepsDuringActivity,
    int? caloriesBurned,
    // ActivityType activityType,
    required DateTime activityStartTime,
  }) = _ActivityDto;

  factory ActivityDto.fromJson(Map<String, dynamic> json) =>
      _$ActivityDtoFromJson(json);

  const ActivityDto._();

  factory ActivityDto.fromDomain(ActivityDataModel activityDataModel) {
    return ActivityDto(
      activityStartTime: activityDataModel.activityStartTime.getOrCrash(),
      activityTitle: activityDataModel.activityTitle,
      activityDescription: activityDataModel.activityDescription,
      activityDuration: activityDataModel.activityDuration,
      stepsDuringActivity: activityDataModel.stepsDuringActivity,
      caloriesBurned: activityDataModel.caloriesBurned,
    );
  }

  ActivityDataModel toDomain() {
    return ActivityDataModel(
      activityStartTime: ActivityStartTime(activityStartTime),
      activityTitle: activityTitle,
      activityDescription: activityDescription,
      activityDuration: activityDuration,
      stepsDuringActivity: stepsDuringActivity,
      caloriesBurned: caloriesBurned,
    );
  }
}
