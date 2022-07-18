import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_failures.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_fetched_step.dart';
import 'package:private_fit/domain/activity_tracker/i_activity_tracker_facade.dart';

@injectable
class GetFetchedStep {
  GetFetchedStep(this._iActivityTrackerFacade);

  final IActivityTrackerFacade _iActivityTrackerFacade;

  Future<Either<ActivityTrackerFailures, FetchedStep>> call() =>
      _iActivityTrackerFacade.getFetchedStep();
}
