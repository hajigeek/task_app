// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  State<DatePicker> createState() => _DatePickerState();
}

final weekList = ['Fri', 'Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu'];
final dayList = ['21', '22', '23', '24', '25', '26', '27'];
var selected = 4;

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () => setState(() {
                    selected == index;
                  }),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: selected == index
                            ? Colors.grey.withOpacity(0.1)
                            : null),
                    child: Column(
                      children: [
                        Text(
                          '${weekList[index]}',
                          style: TextStyle(
                              color: selected == index
                                  ? Colors.black
                                  : Colors.grey[700]),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '${dayList[index]}',
                          style: TextStyle(
                              color: selected == index
                                  ? Colors.black
                                  : Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (_, index) => SizedBox(width: 5),
            itemCount: dayList.length));
  }
}
