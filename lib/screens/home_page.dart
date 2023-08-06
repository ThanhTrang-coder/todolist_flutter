import 'package:flutter/material.dart';
import 'package:todos_flutter/screens/add_task_screen.dart';
import 'package:todos_flutter/widgets/tasks_list.dart';

import '../blocs/bloc_exports.dart';
import '../models/task_model.dart';
import 'drawer_navigation.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});
  static const id = 'tasks_page';

  @override
  State<TasksPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TasksPage> {
  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom
          ),
          child: const AddTaskScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState> (
      builder: (context, state) {
        List<TaskModel> tasksList = state.allTasks;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Tasks App'),
            centerTitle: true,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.white,
          ),
          drawer: const DrawerNavigation(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),
              Center(
                child: Text(
                    '${state.allTasks.length} tasks',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              //TasksList(tasksList: tasks, realm: realm),
              TasksList(tasksList: tasksList,),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _addTask(context),
            foregroundColor: Colors.white,
            backgroundColor: Colors.grey.shade400,
            tooltip: 'Add task',
            child: const Icon(Icons.add_rounded, size: 35,),
          ),
        );
      },
    );
  }
}


