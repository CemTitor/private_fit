import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_failures.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_fetched_step.dart';

abstract class IActivityTrackerFacade {
  Future<Either<ActivityTrackerFailures, Unit>> justplaceholder();
  Future<Either<ActivityTrackerFailures, FetchedStep>> getFetchedStep();
}
