import 'package:flutter/material.dart';
import 'package:todos_flutter/models/task_model.dart';
import 'package:todos_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  List<TaskModel> tasksList;

  TasksList({
    super.key, required this.tasksList
  });
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          var task = tasksList[index];
          return TaskTile(task: task,);
        }
      ),
    );
  }
}