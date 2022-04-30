import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';
import 'package:dotted_border/dotted_border.dart';

class Tasks extends StatelessWidget {
  final taskslist = Task.generatedtasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          itemCount: taskslist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => taskslist[index].islast
              ? _buildAddTask()
              : _buildTask(context, taskslist[index])),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(20),
        dashPattern: [10, 10],
        color: Colors.grey,
        strokeWidth: 2,
        child: Center(
          child: Text(
            '+ Add',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ));
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: task.bgcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            task.iconData,
            color: task.iconColor,
            size: 35,
          ),
          SizedBox(height: 30),
          Text(
            task.Title!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              _BuildAddTaskButton(
                  task.BtnColor!, task.iconColor!, '${task.left} left'),
              SizedBox(width: 5),
              _BuildAddTaskButton(
                  Colors.white, task.iconColor!, '${task.done} done')
            ],
          )
        ],
      ),
    );
  }

  Widget _BuildAddTaskButton(Color bgcolor, Color txColor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: txColor,
        ),
      ),
    );
  }
}
