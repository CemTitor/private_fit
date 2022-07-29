part of 'activity_bloc.dart';

@freezed
class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.started() = _Started;
  const factory ActivityEvent.save(ActivityDataModel activityDataModel) = _save;
}
