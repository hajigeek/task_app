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
  bool islast;
  Task(
      {this.BtnColor,
      this.Title,
      this.bgcolor,
      this.done,
      this.left,
      this.iconColor,
      this.iconData,
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
      ),
      Task(
          iconData: Icons.cases_rounded,
          Title: 'Work',
          left: 3,
          done: 4,
          iconColor: kRedDark,
          bgcolor: kRedLight,
          BtnColor: kRed),
      Task(
          iconData: Icons.favorite_rounded,
          Title: 'Health',
          left: 1,
          done: 5,
          iconColor: kBlueDark,
          bgcolor: kBlueLight,
          BtnColor: kBlue),
      Task(islast: true)
    ];
  }
}
