import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';
import 'package:private_fit/application/activity_tracker/bloc/activity_tracker_bloc.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_failures.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/app_styles.dart';

// ignore: must_be_immutable
class ActivityTrackerView extends StatelessWidget {
  const ActivityTrackerView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final i10n = context.l10n;
    return BlocBuilder<ActivityTrackerBloc, ActivityTrackerState>(
      bloc: getIt<ActivityTrackerBloc>(),
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return OnInitialState(i10n: i10n);
          },
          loadSuccess: (value) {
            return Material(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 75,
                    child: Icon(
                      Icons.accessibility,
                      size: 75,
                    ),
                  ),
                  Text(
                    '${value.fetchedStep.step} Steps',
                    style: TextStyle(fontSize: 50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(child: Icon(Icons.access_time_sharp)),
                      CircleAvatar(child: Icon(Icons.location_on_rounded)),
                      CircleAvatar(
                          child: Icon(Icons.local_fire_department_rounded)),
                    ],
                  ),
                ],
              ),
            );
            // return FutureBuilder<OrderedNutrients>(
            //   future: OrderedNutrientsCache().download(context),
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       return FDA(
            //         fetchedProduct: value.fetchedProduct.product!,
            //       );
            //     }
            //     return const Scaffold(
            //       backgroundColor: Colors.white,
            //       body: Center(
            //         child: CupertinoActivityIndicator(),
            //       ),
            //     );
            //   },
            // );
          },
          failureGettingStep: (failures) {
            return OnFailures(
                activityTrackerFailures: failures.activityTrackerfailures);
          },
        );
      },
    );
  }
}

class OnFailures extends StatelessWidget {
  const OnFailures({
    Key? key,
    required this.activityTrackerFailures,
  }) : super(key: key);
  final ActivityTrackerFailures activityTrackerFailures;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AutoSizeText(
          activityTrackerFailures.map(
            internetNotFound: (_) => 'internetNotFound',
            failedToGetPermissions: (_) => 'failedToGetPermissions',
            internetError: (_) => 'internetError',
            userCancelled: (_) => 'userCancelled',
            codeInvalid: (_) => 'codeInvalid',
            onPedestrianStatusError: (_) => 'Pedestrian Status not available',
            onStepCountError: (_) => 'Step Count not available',
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class OnInitialState extends StatelessWidget {
  OnInitialState({
    Key? key,
    required this.i10n,
  }) : super(key: key);

  final AppLocalizations i10n;
  late QrReaderViewController qrReaderViewController;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 75,
            child: Icon(
              Icons.accessibility,
              size: 75,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(child: Icon(Icons.access_time_sharp)),
              CircleAvatar(child: Icon(Icons.location_on_rounded)),
              CircleAvatar(child: Icon(Icons.local_fire_department_rounded)),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            onPressed: () async {
              context.read<ActivityTrackerBloc>().add(
                    const ActivityTrackerEvent.stepDataOnSuccess(),
                  );
            },
            child: Text('Fetch Step'),
          ),
        ],
      ),
    );
  }
}
