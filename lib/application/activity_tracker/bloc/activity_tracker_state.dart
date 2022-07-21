part of 'activity_tracker_bloc.dart';

@freezed
class ActivityTrackerState with _$ActivityTrackerState {
  const factory ActivityTrackerState.initial() = _Initial;
  // const factory ActivityTrackerState.loading() = _Loading;
  const factory ActivityTrackerState.failureGettingStep(
    ActivityTrackerFailures activityTrackerfailures,
  ) = _FailureGettingStep;
  const factory ActivityTrackerState.loadSuccess(FetchedStep fetchedStep) =
      _LoadSuccess;
}
// void onPedestrianStatusChanged(PedestrianStatus event) {
//   print(event);
//   _status = event.status;
// }
