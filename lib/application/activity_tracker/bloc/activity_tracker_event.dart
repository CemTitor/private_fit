part of 'activity_tracker_bloc.dart';

@freezed
abstract class ActivityTrackerEvent with _$ActivityTrackerEvent {
  const factory ActivityTrackerEvent.stepDataOnSuccess() = _StepDataOnSuccess;
}

// class OpenFoodEvent with _$OpenFoodEvent {
//   // const factory OpenFoodEvent.getCameraPermission() = _GetCameraPermission;
//   const factory OpenFoodEvent.qrDataOnSuccess(String qRdata) = _QrDataOnSuccess;
// // const factory OpenFoodEvent.scanComplete() = _ScanComplete;
// }
