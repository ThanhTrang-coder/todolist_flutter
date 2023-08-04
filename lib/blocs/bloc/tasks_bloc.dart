import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_flutter/blocs/bloc/tasks_event.dart';
import 'package:todos_flutter/blocs/bloc/tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc(): super(const TasksState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  void _onAddTask(AddTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
      allTasks: List.from(state.allTasks)..add(event.task)
    ));
  }

  void _onUpdateTask(UpdateTask event, Emitter<TasksState> emit) {

  }

  void _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) {

  }
}