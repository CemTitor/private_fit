import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/activity/activity_data_model.dart';
import 'package:private_fit/domain/activity/i_activity_facade.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';

@lazySingleton
class SaveActivityDataUseCase {
  SaveActivityDataUseCase(this._iActivityFacade);

  final IActivityFacade _iActivityFacade;

  Future<Either<AtPlatformFailure, Unit>> call(
    ActivityDataModel activityDataModel,
  ) =>
      _iActivityFacade.saveActivityData(activityDataModel);
}
