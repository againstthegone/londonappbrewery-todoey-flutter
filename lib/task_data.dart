import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks {
    return List.unmodifiable(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  markTaskState(Task task, bool isComplete) {
    task.isComplete = isComplete;
    notifyListeners();
  }
}
