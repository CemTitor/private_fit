part of 'activity_bloc.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    required ActivityDataModel activityDataModel,
    required bool showErrorMessages,
    required bool isSaving,
    required bool liveData,
    required Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ActivityState;
  factory ActivityState.initial() => ActivityState(
        activityDataModel: ActivityDataModel.initialState(),
        saveFailureOrSuccessOption: none(),
        isSaving: false,
        showErrorMessages: false,
        liveData: false,
      );
}
