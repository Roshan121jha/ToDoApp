import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor/moor.dart';
import 'package:todoapp/src/database/dtos/task_list_dto.dart';
import 'package:todoapp/src/database/dtos/list_items_dto.dart';

part 'todoapp_database.g.dart';

// This annotation tells the code generator which tables this DB works with
@UseMoor(tables:[Tasklists, Listitems])
// _$AppDatabase is the name of the generated class
class ToDoAppDatabase extends _$ToDoAppDatabase {
  ToDoAppDatabase()
      // Specify the location of the database file
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: true,
        )));

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 3;
}