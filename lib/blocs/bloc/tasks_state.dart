import 'package:equatable/equatable.dart';
import 'package:todos_flutter/models/task_model.dart';

class TasksState extends Equatable {
  final List<TaskModel> allTasks;

  const TasksState({
      this.allTasks = const<TaskModel>[],
  });

  @override
  List<Object?> get props => [allTasks];
}