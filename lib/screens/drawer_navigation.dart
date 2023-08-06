import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_flutter/blocs/bloc/tasks_bloc.dart';
import 'package:todos_flutter/screens/home_page.dart';
import 'package:todos_flutter/screens/statistics_page.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                color: Colors.grey,
                child: const Text(
                  'Todos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              BlocBuilder<TasksBloc, TasksState>(
                builder: (context, state) {
                  return ListTile(
                    leading: const Icon(Icons.task_rounded),
                    title: const Text('My Tasks'),
                    onTap: () => Navigator.of(context).pushNamed(TasksPage.id),
                  );
                }
              ),
              BlocBuilder<TasksBloc, TasksState>(
                  builder: (context, state) {
                    return ListTile(
                      leading: const Icon(Icons.stacked_bar_chart_rounded),
                      title: const Text('Statistics'),
                      onTap: () => Navigator.of(context).pushNamed(StatisticPage.id),
                    );
                  }
              ),
            ],
          ),
        )
    );
  }
}
