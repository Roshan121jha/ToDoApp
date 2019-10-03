import 'package:moor_flutter/moor_flutter.dart';
import 'package:todoapp/src/database/dtos/task_list_dto.dart';
import 'package:todoapp/src/database/todoapp_database.dart';

part 'task_list.g.dart';

// Denote which tables this DAO can access
@UseDao(tables: [Tasklists])
class TasklistDao extends DatabaseAccessor<ToDoAppDatabase> with _$TasklistDaoMixin{

  final ToDoAppDatabase toDoAppDatabase;

  TasklistDao(this.toDoAppDatabase): super(toDoAppDatabase);

  Future<List<Tasklist>> getAllTasks() => select(tasklists).get();
}