// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';
import 'package:task_app/screens/details/widget/datepicker.dart';
import 'package:task_app/screens/details/widget/task_timeline.dart';
import 'package:task_app/screens/details/widget/task_title.dart';

class detailPage extends StatelessWidget {
  final Task task;
  detailPage(this.task);

  @override
  Widget build(BuildContext context) {
    final detailLit = task.desc;
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            _BuildAppBar(context),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [DatePicker(), TaskTitle()],
                ),
              ),
            ),
            detailLit == null
                ? SliverFillRemaining(
                    child: Container(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'No Task today',
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        )),
                  )
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (_, index) => TaskTimeline(detailLit[index]),
                        childCount: detailLit.length))
          ],
        ));
  }

  Widget _BuildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${task.Title} Task',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You have ${task.left} new Tasks today',
              style: TextStyle(color: Colors.grey[700], fontSize: 12),
            )
          ],
        ),
      ),
      actions: [Icon(Icons.more_vert, size: 40)],
    );
  }
}
