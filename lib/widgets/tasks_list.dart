import 'package:flutter/material.dart';

import '../task.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final void Function(Task, bool)? onTaskCheckChanged;

  const TasksList(this.tasks, {Key? key, this.onTaskCheckChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tasks[index],
          onChanged: (value) {
            if (onTaskCheckChanged != null) {
              onTaskCheckChanged!(tasks[index], value ?? false);
            }
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
