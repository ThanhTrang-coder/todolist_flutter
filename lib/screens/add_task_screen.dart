import 'package:flutter/material.dart';
import 'package:todos_flutter/blocs/bloc_exports.dart';
import 'package:todos_flutter/models/task_model.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descController = TextEditingController();

    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Add Task', style: TextStyle(fontSize: 24),),
            const SizedBox(height: 10,),
            TextField(
              autofocus: true,
              controller: titleController,
              decoration: const InputDecoration(
                label: Text('Title'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              autofocus: true,
              controller: descController,
              decoration: const InputDecoration(
                label: Text('Description'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    String title = titleController.text;
                    String description = descController.text;
                    var task = TaskModel(title, description);
                    context.read<TasksBloc>().add(AddTask(task: task));
                    Navigator.pop(context);
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ],
        ),
    );
  }
}