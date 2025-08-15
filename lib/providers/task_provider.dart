import 'package:flutter/material.dart';
import 'package:swiftask/model/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: "Hello,This First Note!", completed: false)
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void makeTaskCompleted(index) {
    _tasks[index].completed = !_tasks[index].completed;
    notifyListeners();
  }
}
