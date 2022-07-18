import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/activity_tracker/bloc/activity_tracker_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/activity_tracker/activity_tracker_view.dart';

class ActivityTrackerPage extends StatelessWidget {
  const ActivityTrackerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ActivityTrackerBloc>(),
      child: ActivityTrackerView(
        key: key,
      ),
    );
  }
}
