import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/activity/activity_data_model.dart';

abstract class IActivityFacade {
  Future<Either<AtPlatformFailure, Unit>> saveActivityData(
    ActivityDataModel activityDataModel,
  );

  Future<Option<ActivityDataModel>> getActivityData();
}
