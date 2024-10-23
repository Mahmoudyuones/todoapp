import 'package:flutter/material.dart';
import 'package:todoapp/appthem.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Appthem.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      height: MediaQuery.of(context).size.height * 115 / 870,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(end: 15),
                width: 4,
                decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                height: double.infinity,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'play basket ball',
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: theme.primaryColor),
                  ),
                  Text('task description'),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * .16,
            height: MediaQuery.sizeOf(context).height * .05,
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.check,
              size: 32,
              color: Appthem.white,
            ),
          )
        ],
      ),
    );
  }
}
