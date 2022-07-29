import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/activity/activity_data_model.dart';
import 'package:private_fit/domain/activity/i_activity_facade.dart';
import 'package:private_fit/domain/activity/value_objects.dart';

@lazySingleton
class GetActivityDataUseCase {
  GetActivityDataUseCase(this._iActivityFacade);

  final IActivityFacade _iActivityFacade;

  Future<Option<ActivityDataModel>> call() async {
    return _iActivityFacade.getActivityData().then(
      (value) {
        return value.fold(
          none,
          (a) {
            DateTime _addDays(DateTime dates, Duration days) => dates.add(days);

            final activityStartTime = a.activityStartTime.getOrCrash();

            final timeBetween = (Duration(days: activityStartTime.day) -
                    Duration(days: activityStartTime.day))
                .inDays;
            final daysBetween = timeBetween / (1000 * 60 * 60 * 24);
            // final circleBetween = daysBetween / a.periodCycleDays;

            late DateTime _fertilePhaseStartDate;
            late DateTime _nextPeriod;
            for (int t = 0; t < 1; t++) {
              // final cycleDaysBetween = a.periodCycleDays * (circleBetween + t);

              // _nextPeriod = _addDays(
              //   activityStartTime,
              //   Duration(
              //     days: cycleDaysBetween.toInt(),
              //   ),
              // );
              // _fertilePhaseStartDate = _addDays(
              //   _nextPeriod,
              //   Duration(days: fertilePhaseStart),
              // );
            }

            return optionOf(
              ActivityDataModel(
                activityTitle: a.activityTitle,
                activityStartTime: ActivityStartTime(DateTime.now()),
              ),
            );
          },
        );
      },
    );
  }
}
