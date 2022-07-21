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

import 'package:pedometer/pedometer.dart';

@LazySingleton(as: IActivityTrackerFacade)
class ActivityTrackerServices extends IActivityTrackerFacade {
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
  Future<Either<ActivityTrackerFailures, Unit>> justPlaceHolder() {
    throw UnimplementedError();
  }

  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?';
  String _steps = '?';

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    _status = event.status;
  }

  void initPlatformState() {
    // Permission.activityRecognition.request();
    // Permission.location.request();

    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream.listen(onPedestrianStatusChanged);
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount);

    // if (!mounted)
    return;
  }

  void onStepCount(StepCount event) {
    print(event);
    _steps = event.steps.toString();

    // var dist =
    //     num.parse(_steps); //pasamos el entero a una variable llamada dist
    // double y = (dist + .0); //lo convertimos a double una forma de varias
    //
    //   _numerox =
    //       y; //lo pasamos a un estado para ser capturado ya convertido a double

    // getDistanceRun(_numerox!);
    // getBurnedRun(_numerox!);
  }

  @override
  Future<Either<ActivityTrackerFailures, FetchedStep>> getFetchedStep() async {
    // get steps for today (i.e., since midnight)
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);

    int? steps;
    StepCount? event;

    try {
      ///try below code when step number is 0.
      // steps = (steps == null)? 0 : await health.getTotalStepsInInterval(midnight, now);
      steps = event?.steps.toString() as int?;
      return right(FetchedStep(steps!));
    } catch (error) {
      print('Caught exception in getTotalStepsInInterval: $error');
      return left(const ActivityTrackerFailures.internetError());
    }
  }
}
