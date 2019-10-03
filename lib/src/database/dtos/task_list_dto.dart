import 'package:moor_flutter/moor_flutter.dart';

// The name of the database table is "tasklists"
// By default, the name of the generated data class will be "TaskList" (without "s")
class Tasklists extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get tasklistid => integer().autoIncrement()();

  // If the length constraint is not fulfilled, the Task will not
  // be inserted into the database and an exception will be thrown.
  TextColumn get tasklistname => text().withLength(min: 1, max: 20)();

  // DateTime is not natively supported by SQLite
  // Moor converts it to & from UNIX seconds
  DateTimeColumn get taskcreatedate => dateTime().nullable()();

  // Booleans are not supported as well, Moor converts them to integers
  // Simple default values are specified as Constants
  BoolColumn get taskcompleted => boolean().withDefault(Constant(false))();
}
