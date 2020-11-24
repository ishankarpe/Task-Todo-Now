import 'package:flutter/material.dart';
import 'package:todonow_flutter/models/task.dart';
import 'package:todonow_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Have Lunch'),
    Task(name: 'Play Games'),
    Task(name: 'Have Dinner '),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
