import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_failures.dart';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/activity_tracker/use_cases/get_fetched_step_use_case.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_fetched_step.dart';

part 'activity_tracker_event.dart';
part 'activity_tracker_state.dart';
part 'activity_tracker_bloc.freezed.dart';

@lazySingleton
class ActivityTrackerBloc
    extends Bloc<ActivityTrackerEvent, ActivityTrackerState> {
  ActivityTrackerBloc(this._getFetchedStep)
      : super(const ActivityTrackerState.initial()) {
    on<ActivityTrackerEvent>(_openStepHandler, transformer: sequential());
  }
  final GetFetchedStep _getFetchedStep;
  FutureOr<void> _openStepHandler(
    ActivityTrackerEvent event,
    Emitter<ActivityTrackerState> emit,
  ) async {
    await event.map(
      stepDataOnSuccess: (stepData) async {
        await _getFetchedStep().then((value) {
          value.fold(
            (l) => emit(
              ActivityTrackerState.failureGettingStep(l),
            ),
            (r) => emit(ActivityTrackerState.loadSuccess(r)),
          );
        });
      },
    );
  }
}
