import 'package:moor_flutter/moor_flutter.dart';

// The name of the database table is "listitems"
// By default, the name of the generated data class will be "ListItems" (without "s")
class Listitems extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get listitemid => integer().autoIncrement()();
  //foreign key of TaskLists primary key
  IntColumn get tasklistid => integer().customConstraint('REFERENCES tasklists(tasklistid) ON UPDATE CASCADE ON DELETE SET NULL')();
  // If the length constraint is not fulfilled, the Task will not
  // be inserted into the database and an exception will be thrown.
  TextColumn get listname => text().withLength(min: 1, max: 50)();
  // DateTime is not natively supported by SQLite
  // Moor converts it to & from UNIX seconds
  DateTimeColumn get listcreatedate => dateTime().nullable()();
  // Booleans are not supported as well, Moor converts them to integers
  // Simple default values are specified as Constants
  BoolColumn get listcompleted => boolean().withDefault(Constant(false))();
}
