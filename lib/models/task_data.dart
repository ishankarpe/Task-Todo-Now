import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_todo_now_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks=[];
  List<Task> _spTasks=[];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_spTasks);
  }

  int get taskCount {
    return _spTasks.length??0;
  }

  void
  addTask(String newTaskTitle) async {
    final task = Task(name: newTaskTitle);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _spTasks= (prefs.getStringList('taskList')??_tasks);
    _spTasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _spTasks.remove(task);
    notifyListeners();
  }
}
