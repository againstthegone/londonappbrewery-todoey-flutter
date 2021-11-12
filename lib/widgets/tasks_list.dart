import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskData.tasks[index],
            onChanged: (value) {
              taskData.markTaskState(taskData.tasks[index], value ?? false);
            },
            onLongPress: () {
              taskData.removeTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
