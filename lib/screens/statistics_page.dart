import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_flutter/blocs/bloc/tasks_bloc.dart';

import 'drawer_navigation.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});
  static const id = 'statistics_page';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Statistic'),
              centerTitle: true,
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
            ),
            drawer: const DrawerNavigation(),
            body: const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Active tasks: 0',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'Completed tasks: 0',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}