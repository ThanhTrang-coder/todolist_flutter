import 'package:flutter/material.dart';
import 'package:todos_flutter/blocs/bloc_exports.dart';
import 'package:todos_flutter/models/task_model.dart';

class TaskTile extends StatelessWidget {
  final TaskModel task;

  const TaskTile({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.isDone,
        activeColor: Colors.grey,
        onChanged: (value) {
          context.read<TasksBloc>().add(UpdateTask(task: task));
        },
      ),
      title: Text(task.title),
      subtitle: Text(task.description),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.grey,),
        onPressed: () {
          context.read<TasksBloc>().add(DeleteTask(task: task));
          //realm.write(() => realm.delete(tasksList[index]));
        },
      ),
      onTap: () {
        print('Clicked!');
        //showUpdateDialog(tasksList[index]);
        // _showUpdateDialog();
      },
    );
  }
}
