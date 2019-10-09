import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:todoapp/src/bloc/task_list_model.dart';
import 'package:todoapp/src/database/daos/task_list_dao.dart';
import 'package:todoapp/src/database/todoapp_database.dart';
import './bloc.dart';
import 'package:todoapp/src/bloc/tasklist_state.dart';

class TasklistBloc extends Bloc<TasklistEvent, TasklistState> {
  @override
  TasklistState get initialState => InitialTasklistState();

  @override
  Stream<TasklistState> mapEventToState(
    TasklistEvent event,
  ) async* {
    // Distinguish between different events, creating new TaskList
    if (event is AddTaskList) {
      print("the taskList name is ${event.taskListName}");
      final tasklist = Tasklist(
        taskcompleted: true,
        tasklistname: "Third List",
        tasklistid: 3,
      );
      TasklistDao(ToDoAppDatabase()).insertTask(tasklist);
      yield TaskListLoaded(
          TaskDetail(listId: "firstListId", listName: "firstListName"));
    }
  }
}
