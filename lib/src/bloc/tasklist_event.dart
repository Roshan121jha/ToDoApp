import 'package:meta/meta.dart';

@immutable
abstract class TasklistEvent {}

class AddTaskList extends TasklistEvent {
  final String taskListName;

  AddTaskList(this.taskListName);
}

class DeleteTaskList extends TasklistEvent {
  final String taskListName;

  DeleteTaskList(this.taskListName);
}
