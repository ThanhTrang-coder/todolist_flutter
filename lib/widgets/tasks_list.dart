import 'package:flutter/material.dart';
import 'package:todos_flutter/models/task_model.dart';

class TasksList extends StatelessWidget {
  final List<TaskModel> tasksList;

  const TasksList({
    super.key, required this.tasksList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: tasksList.length,
          itemBuilder: (context, index) {
            var task = tasksList[index];
            return ListTile(
              leading: Checkbox(
                value: task.isDone,
                onChanged: (value) {},
              ),
              title: Text(task.title),
              subtitle: Text(task.description),
            );
          }
      ),
    );
  }
}