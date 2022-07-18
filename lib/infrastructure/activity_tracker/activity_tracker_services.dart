import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_failures.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_fetched_step.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/activity_tracker/i_activity_tracker_facade.dart';
import 'package:private_fit/injections.dart';

import 'package:health/health.dart';

@LazySingleton(as: IActivityTrackerFacade)
class ActivityTrackerServices extends IActivityTrackerFacade {
  HealthFactory health = HealthFactory();
  // int _nofSteps = 0;

  final AtSignLogger _logger = AtSignLogger('ActivityTrackerServices');

// late  _atClientPreference;
  Map<String, AtClientService> atClientServiceMap = {};
  late AtClientPreference atClientPreference;
  late AtClientService atClientServiceInstance;

  var onBoardFacade = getIt<IAtsignOnBoardingFacade>();

  ///Fetches atsign from device keychain.
  Future<String?> getAtSign() async {
    await onBoardFacade.loadAtClientPreference().then((value) {
      value.fold(
        (l) => const OnBoardingFailure.serverError(),
        (r) => atClientPreference = r,
      );
    });

    atClientServiceInstance = AtClientService();

    return atClientServiceInstance.atClientManager.atClient.getCurrentAtSign();
  }

  @override
  Future<Either<ActivityTrackerFailures, Unit>> justplaceholder() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ActivityTrackerFailures, FetchedStep>> getFetchedStep() async {
    // int? steps;

    // get steps for today (i.e., since midnight)
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);

    bool requested = await health.requestAuthorization([HealthDataType.STEPS]);

    int? steps = 0;

    if (requested) {
      try {
        steps = await health.getTotalStepsInInterval(midnight, now);
        // return right(FetchedStep(steps!));
      } catch (error) {
        print("Caught exception in getTotalStepsInInterval: $error");
        // return left(const ActivityTrackerFailures.internetError());

      }

      // print('Total number of steps: $steps');
      // _nofSteps = (steps == null) ? 0 : steps;
      // _state = (steps == null) ? AppState.NO_DATA : AppState.STEPS_READY;
      // interneterror // okey
    } else {
      print("Authorization not granted - error in authorization");
      // return left(const ActivityTrackerFailures.failedToGetPermissions());
    }

    // final ProductResult result;
    // try {
    //   result = await OpenFoodAPIClient.getProduct(configuration);
    // } catch (e) {
    //   return left(const ActivityTrackerFailures.internetError());
    // }

    if (steps != null) {
      // await daoProduct.put(product);
      _logger.info('Successful got the Product associated with the Barcode');
      return right(FetchedStep(steps));
    }

    // }
    // if (barcode.trim().isNotEmpty &&
    //     (result.barcode == null || result.barcode!.isEmpty)) {
    //   return left(const ActivityTrackerFailures.codeInvalid());
    // }
    return left(const ActivityTrackerFailures.internetNotFound());
  }
}
