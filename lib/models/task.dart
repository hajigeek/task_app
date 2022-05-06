import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/constants/colors.dart';

class Task {
  IconData? iconData;
  String? Title;
  Color? bgcolor;
  Color? iconColor;
  Color? BtnColor;
  num? done;
  num? left;
  List<Map<String, dynamic>>? desc;
  bool islast;
  Task(
      {this.BtnColor,
      this.Title,
      this.bgcolor,
      this.done,
      this.left,
      this.iconColor,
      this.iconData,
      this.desc,
      this.islast = false});

  static List<Task> generatedtasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          Title: 'Personal',
          left: 2,
          done: 15,
          iconColor: kYellowDark,
          bgcolor: kYellowLight,
          BtnColor: kYellow,
          desc: [
            {
              'time': '9:00 am',
              'title': 'meet Omar at Foreign Family',
              'slot': '9:00 - 10:00 am',
              'tlColor': kRedDark,
              'bgColor': kRedLight,
            },
            {
              'time': '10:00 am',
              'title': 'Meet Naoh Kegan',
              'slot': '10:00 - 12:00 am',
              'tlColor': kYellowDark,
              'bgColor': kYellowLight,
            },
            {
              'time': '11:00 am',
              'title': '',
              'slot': '',
              'tlColor': kYellowDark,
            },
            {
              'time': '12:00 am',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '1:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '1:00 pm',
              'title': 'Call with client',
              'slot': '1:00 - 2:00 pm',
              'tlColor': kBlueDark,
              'bgColor': kBlueLight,
            },
            {
              'time': '2:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '3:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
          ]),
      Task(
        iconData: Icons.cases_rounded,
        Title: 'Work',
        left: 3,
        done: 4,
        iconColor: kRedDark,
        bgcolor: kRedLight,
        BtnColor: kRed,
      ),
      Task(
          iconData: Icons.favorite_rounded,
          Title: 'Health',
          left: 1,
          done: 5,
          iconColor: kBlueDark,
          bgcolor: kBlueLight,
          BtnColor: kBlue),
      Task(islast: true),
    ];
  }
}
