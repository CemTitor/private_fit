import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:private_fit/application/activity/bloc/activity_bloc.dart';
import 'package:private_fit/domain/activity/activity_data_model.dart';
import 'package:private_fit/domain/activity/value_objects.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/home/widgets/homepage_card.dart';

class WorkoutList extends StatefulWidget {
  const WorkoutList({Key? key}) : super(key: key);

  @override
  State<WorkoutList> createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
  @override
  Widget build(BuildContext context) {
    List<String> activityList = <String>[
      'Running',
      'Jogging',
      'Walking',
      'Swimming',
      'Biking',
      'Rowing',
      'Boxing',
      'Dancing',
    ];

    List<ImageIcon> activityIconList = <ImageIcon>[
      ImageIcon(
        AssetImage("assets/icons/pngs/activities/running.png"),
        // color: Colors.red,
        size: 24,
      ),
      ImageIcon(
        AssetImage("assets/icons/pngs/activities/jogging.png"),
        // color: Colors.red,
        size: 5,
      ),
      ImageIcon(
        AssetImage("assets/icons/pngs/activities/walking.png"),
        // color: Colors.red,
        size: 5,
      ),
      ImageIcon(
        AssetImage("assets/icons/pngs/activities/swimming.png"),
        // color: Colors.red,
        size: 24,
      ),
      ImageIcon(
        AssetImage("assets/icons/pngs/activities/biking.png"),
        // color: Colors.red,
        size: 24,
      ),
      ImageIcon(
        AssetImage("assets/icons/pngs/activities/rowing.png"),
        // color: Colors.red,
        size: 24,
      ),
      ImageIcon(
        AssetImage("assets/icons/pngs/activities/boxing.png"),
        // color: Colors.red,
        size: 24,
      ),
      ImageIcon(
        AssetImage("assets/icons/pngs/activities/dancing.png"),
        // color: Colors.red,
        size: 24,
      ),
    ];

    final List<Image> activityIconList2 = <Image>[
      Image.asset("assets/icons/pngs/activities/running.png"),
      Image.asset("assets/icons/pngs/activities/jogging.png"),
      Image.asset("assets/icons/pngs/activities/walking.png"),
      Image.asset("assets/icons/pngs/activities/swimming.png"),
      Image.asset("assets/icons/pngs/activities/biking.png"),
      Image.asset("assets/icons/pngs/activities/rowing.png"),
      Image.asset("assets/icons/pngs/activities/boxing.png"),
      Image.asset("assets/icons/pngs/activities/dancing.png"),
    ];

    // ActivityType activityType;
    return HomepageCard(
      cardChild: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int listviewIndex) {
            return Column(
              children: [
                MaterialButton(
                  height: 60,
                  onPressed: () {
                    addingActivityBottomSheet(
                      context,
                      activityList,
                      listviewIndex,
                    );
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: const CircleBorder(),
                  child: activityIconList2[listviewIndex],
                ),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(activityList[listviewIndex]),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.0005,
            );
          },
          itemCount: 8,
        ),
      ),
    );
  }

  void addingActivityBottomSheet(
    BuildContext context,
    List<String> activityList,
    int listviewIndex,
  ) {
    String? activityTitle;
    String? activityDescription;
    int activityDuration = 33;
    int? stepsDuringActivity;
    int? caloriesBurned;
    ActivityStartTime activityStartTime;
    String activityType;

    // ActivityDataModel activityDataModel2 = ActivityDataModel.initialState();

    ActivityDataModel activityDataModel = ActivityDataModel(
      activityTitle: activityTitle,
      activityDescription: activityDescription,
      activityDuration: activityDuration,
      stepsDuringActivity: stepsDuringActivity,
      caloriesBurned: caloriesBurned,
      activityStartTime: ActivityStartTime(
        DateTime.now(),
      ),
    );

    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (context) => BlocProvider(
        create: (context) => getIt<ActivityBloc>(),
        child: BlocBuilder<ActivityBloc, ActivityState>(
          /// should ı use below line
          // bloc: getIt<ActivityBloc>()
          //   ..add(ActivityEvent.save(activityDataModel)),
          builder: (BuildContext context, ActivityState state) {
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Container(
                  color: Color(0xff757575),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.cancel_outlined),
                            Text(
                              'Add Activity',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                context
                                    .read<ActivityBloc>()
                                    .add(ActivityEvent.save(activityDataModel));
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Add',
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Activity Type'),
                            DropdownButton<String>(
                              autofocus: true,
                              value: activityList[listviewIndex],
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              onChanged: (String? choosenValue) {
                                activityType = choosenValue!;
                              },
                              items: activityList.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(value),
                                      //TODO: add iconList for here
                                      // Icon(),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        TextField(
                          textInputAction: TextInputAction.next,
                          autofocus: true,
                          onChanged: (writtenValue) {
                            setState(() {
                              activityTitle = writtenValue;
                            });
                            // activityTitle = writtenValue;
                          },
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: 'Activity Title',
                          ),
                        ),
                        // TextField(
                        //   textInputAction: TextInputAction.next,
                        //   onChanged: (writtenValue) {
                        //     activityDuration = writtenValue as int;
                        //   },
                        //   decoration: InputDecoration(
                        //     // border: OutlineInputBorder(),
                        //     labelText: 'Duration',
                        //   ),
                        // ),
                        // TextField(
                        //   textInputAction: TextInputAction.next,
                        //   onChanged: (writtenValue) {
                        //     stepsDuringActivity = writtenValue as int?;
                        //   },
                        //   decoration: InputDecoration(
                        //     // border: OutlineInputBorder(),
                        //     labelText: 'Steps',
                        //   ),
                        // ),
                        // TextField(
                        //   textInputAction: TextInputAction.done,
                        //   onChanged: (writtenValue) {
                        //     caloriesBurned = writtenValue as int?;
                        //   },
                        //   decoration: InputDecoration(
                        //     // border: OutlineInputBorder(),
                        //     labelText: 'Calories expended',
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
