import 'package:flutter/material.dart';
import 'package:todos_flutter/screens/add_task_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTaskScreen(titleController: _titleController, descController: _descController,),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future showAddDialog() {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Add todo'),
          content:
          const SizedBox(
            width: 300,
            height: 150,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter title',
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter todo',
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'OK');
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: const Column(
        children: [
          Center(
            child: Text(
              'Task',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddDialog(),
        tooltip: 'Add task',
        child: const Icon(Icons.add),
      ),
    );
  }
}

