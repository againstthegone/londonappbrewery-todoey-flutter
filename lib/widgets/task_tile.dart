import 'package:flutter/material.dart';

import '../task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final void Function(bool?)? onChanged;
  final void Function()? onLongPress;

  const TaskTile(this.task, {Key? key, this.onChanged, this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isComplete
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isComplete,
        onChanged: onChanged,
      ),
      onLongPress: onLongPress,
    );
  }
}
