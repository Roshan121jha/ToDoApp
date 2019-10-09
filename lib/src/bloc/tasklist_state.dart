
import 'package:todoapp/src/bloc/task_list_model.dart';

abstract class TasklistState {}

class InitialTasklistState extends TasklistState {}

class TaskListLoading extends TasklistState {}

// Only the WeatherLoaded event needs to contain data
class TaskListLoaded extends TasklistState {
  final TaskDetail taskDetail;

  TaskListLoaded(this.taskDetail);
}