import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/appthem.dart';
import 'package:todoapp/taps/tasks/task_item.dart';

class Tasktap extends StatelessWidget {
  const Tasktap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * .17,
              color: Appthem.primary,
            ),
            PositionedDirectional(
              start: 30,
              top: 45,
              child: Text(
                'ToDo List',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Appthem.white, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: EasyInfiniteDateTimeLine(
                showTimelineHeader: false,
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                focusDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  Duration(days: 365),
                ),
                dayProps: EasyDayProps(
                    height: MediaQuery.sizeOf(context).height * .1,
                    width: MediaQuery.sizeOf(context).width * .15,
                    dayStructure: DayStructure.dayStrDayNum,
                    activeDayStyle: DayStyle(
                      decoration: BoxDecoration(
                        color: Appthem.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      dayNumStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Appthem.primary),
                      dayStrStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Appthem.primary),
                    ),
                    inactiveDayStyle: DayStyle(
                      decoration: BoxDecoration(
                        color: Appthem.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      dayNumStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Appthem.black),
                      dayStrStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Appthem.black),
                    )),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 15),
            itemBuilder: (_, index) => TaskItem(),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
