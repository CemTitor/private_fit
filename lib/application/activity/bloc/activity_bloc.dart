import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/activity/activity_data_model.dart';
import 'package:private_fit/domain/activity/use_cases/get_activity_data_use_case.dart';
import 'package:private_fit/domain/activity/use_cases/save_activity_data_use_case.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

@lazySingleton
class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc(this._saveActivityDataUseCase, this._getActivityDataUseCase)
      : super(ActivityState.initial()) {
    on<ActivityEvent>(_eventsHandler);
  }

  final SaveActivityDataUseCase _saveActivityDataUseCase;
  final GetActivityDataUseCase _getActivityDataUseCase;

  FutureOr<void> _eventsHandler(
    ActivityEvent event,
    Emitter<ActivityState> emit,
  ) async {
    await event.map(
      started: (d) async {
        await _getActivityDataUseCase.call().then((value) {
          value.fold(
            () => emit(
              state.copyWith(showErrorMessages: true),
            ),
            (activityDataModel) => emit(
              state.copyWith(
                activityDataModel: activityDataModel,
                liveData: true,
              ),
            ),
          );
        });
      },
      save: (s) async {
        await _saveActivityDataUseCase.call(s.activityDataModel).then(
              (value) => value.fold(
                (l) => emit(
                  state.copyWith(
                    showErrorMessages: true,
                    saveFailureOrSuccessOption: optionOf(value),
                  ),
                ),
                (r) => const ActivityEvent.started(),
              ),
            );
      },
    );
  }
}
