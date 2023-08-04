import 'package:equatable/equatable.dart';
import 'package:todos_flutter/models/task_model.dart';

class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object?> get props => [];
}

class AddTask extends TasksEvent {
  final TaskModel task;

  const AddTask({required this.task});

  @override
  List<Object> get props => [task];
}

class UpdateTask extends TasksEvent {
  final TaskModel task;

  const UpdateTask({required this.task});

  @override
  List<Object> get props => [task];
}

class DeleteTask extends TasksEvent {
  final TaskModel task;

  const DeleteTask({required this.task});

  @override
  List<Object> get props => [task];
}