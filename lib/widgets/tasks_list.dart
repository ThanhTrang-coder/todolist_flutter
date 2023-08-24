import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:todos_flutter/widgets/task_tile.dart';

import '../models/task_model.dart';

class TasksList extends StatelessWidget {
  RealmResults<TaskModel> tasksList;

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