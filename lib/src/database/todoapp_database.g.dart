// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todoapp_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Tasklist extends DataClass implements Insertable<Tasklist> {
  final int tasklistid;
  final String tasklistname;
  final DateTime taskcreatedate;
  final bool taskcompleted;
  Tasklist(
      {@required this.tasklistid,
      @required this.tasklistname,
      this.taskcreatedate,
      @required this.taskcompleted});
  factory Tasklist.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Tasklist(
      tasklistid:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tasklistid']),
      tasklistname: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tasklistname']),
      taskcreatedate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}taskcreatedate']),
      taskcompleted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}taskcompleted']),
    );
  }
  factory Tasklist.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Tasklist(
      tasklistid: serializer.fromJson<int>(json['tasklistid']),
      tasklistname: serializer.fromJson<String>(json['tasklistname']),
      taskcreatedate: serializer.fromJson<DateTime>(json['taskcreatedate']),
      taskcompleted: serializer.fromJson<bool>(json['taskcompleted']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'tasklistid': serializer.toJson<int>(tasklistid),
      'tasklistname': serializer.toJson<String>(tasklistname),
      'taskcreatedate': serializer.toJson<DateTime>(taskcreatedate),
      'taskcompleted': serializer.toJson<bool>(taskcompleted),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Tasklist>>(bool nullToAbsent) {
    return TasklistsCompanion(
      tasklistid: tasklistid == null && nullToAbsent
          ? const Value.absent()
          : Value(tasklistid),
      tasklistname: tasklistname == null && nullToAbsent
          ? const Value.absent()
          : Value(tasklistname),
      taskcreatedate: taskcreatedate == null && nullToAbsent
          ? const Value.absent()
          : Value(taskcreatedate),
      taskcompleted: taskcompleted == null && nullToAbsent
          ? const Value.absent()
          : Value(taskcompleted),
    ) as T;
  }

  Tasklist copyWith(
          {int tasklistid,
          String tasklistname,
          DateTime taskcreatedate,
          bool taskcompleted}) =>
      Tasklist(
        tasklistid: tasklistid ?? this.tasklistid,
        tasklistname: tasklistname ?? this.tasklistname,
        taskcreatedate: taskcreatedate ?? this.taskcreatedate,
        taskcompleted: taskcompleted ?? this.taskcompleted,
      );
  @override
  String toString() {
    return (StringBuffer('Tasklist(')
          ..write('tasklistid: $tasklistid, ')
          ..write('tasklistname: $tasklistname, ')
          ..write('taskcreatedate: $taskcreatedate, ')
          ..write('taskcompleted: $taskcompleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tasklistid.hashCode,
      $mrjc(tasklistname.hashCode,
          $mrjc(taskcreatedate.hashCode, taskcompleted.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Tasklist &&
          other.tasklistid == tasklistid &&
          other.tasklistname == tasklistname &&
          other.taskcreatedate == taskcreatedate &&
          other.taskcompleted == taskcompleted);
}

class TasklistsCompanion extends UpdateCompanion<Tasklist> {
  final Value<int> tasklistid;
  final Value<String> tasklistname;
  final Value<DateTime> taskcreatedate;
  final Value<bool> taskcompleted;
  const TasklistsCompanion({
    this.tasklistid = const Value.absent(),
    this.tasklistname = const Value.absent(),
    this.taskcreatedate = const Value.absent(),
    this.taskcompleted = const Value.absent(),
  });
  TasklistsCompanion copyWith(
      {Value<int> tasklistid,
      Value<String> tasklistname,
      Value<DateTime> taskcreatedate,
      Value<bool> taskcompleted}) {
    return TasklistsCompanion(
      tasklistid: tasklistid ?? this.tasklistid,
      tasklistname: tasklistname ?? this.tasklistname,
      taskcreatedate: taskcreatedate ?? this.taskcreatedate,
      taskcompleted: taskcompleted ?? this.taskcompleted,
    );
  }
}

class $TasklistsTable extends Tasklists
    with TableInfo<$TasklistsTable, Tasklist> {
  final GeneratedDatabase _db;
  final String _alias;
  $TasklistsTable(this._db, [this._alias]);
  final VerificationMeta _tasklistidMeta = const VerificationMeta('tasklistid');
  GeneratedIntColumn _tasklistid;
  @override
  GeneratedIntColumn get tasklistid => _tasklistid ??= _constructTasklistid();
  GeneratedIntColumn _constructTasklistid() {
    return GeneratedIntColumn('tasklistid', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tasklistnameMeta =
      const VerificationMeta('tasklistname');
  GeneratedTextColumn _tasklistname;
  @override
  GeneratedTextColumn get tasklistname =>
      _tasklistname ??= _constructTasklistname();
  GeneratedTextColumn _constructTasklistname() {
    return GeneratedTextColumn('tasklistname', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _taskcreatedateMeta =
      const VerificationMeta('taskcreatedate');
  GeneratedDateTimeColumn _taskcreatedate;
  @override
  GeneratedDateTimeColumn get taskcreatedate =>
      _taskcreatedate ??= _constructTaskcreatedate();
  GeneratedDateTimeColumn _constructTaskcreatedate() {
    return GeneratedDateTimeColumn(
      'taskcreatedate',
      $tableName,
      true,
    );
  }

  final VerificationMeta _taskcompletedMeta =
      const VerificationMeta('taskcompleted');
  GeneratedBoolColumn _taskcompleted;
  @override
  GeneratedBoolColumn get taskcompleted =>
      _taskcompleted ??= _constructTaskcompleted();
  GeneratedBoolColumn _constructTaskcompleted() {
    return GeneratedBoolColumn('taskcompleted', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [tasklistid, tasklistname, taskcreatedate, taskcompleted];
  @override
  $TasklistsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'tasklists';
  @override
  final String actualTableName = 'tasklists';
  @override
  VerificationContext validateIntegrity(TasklistsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.tasklistid.present) {
      context.handle(_tasklistidMeta,
          tasklistid.isAcceptableValue(d.tasklistid.value, _tasklistidMeta));
    } else if (tasklistid.isRequired && isInserting) {
      context.missing(_tasklistidMeta);
    }
    if (d.tasklistname.present) {
      context.handle(
          _tasklistnameMeta,
          tasklistname.isAcceptableValue(
              d.tasklistname.value, _tasklistnameMeta));
    } else if (tasklistname.isRequired && isInserting) {
      context.missing(_tasklistnameMeta);
    }
    if (d.taskcreatedate.present) {
      context.handle(
          _taskcreatedateMeta,
          taskcreatedate.isAcceptableValue(
              d.taskcreatedate.value, _taskcreatedateMeta));
    } else if (taskcreatedate.isRequired && isInserting) {
      context.missing(_taskcreatedateMeta);
    }
    if (d.taskcompleted.present) {
      context.handle(
          _taskcompletedMeta,
          taskcompleted.isAcceptableValue(
              d.taskcompleted.value, _taskcompletedMeta));
    } else if (taskcompleted.isRequired && isInserting) {
      context.missing(_taskcompletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tasklistid};
  @override
  Tasklist map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tasklist.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TasklistsCompanion d) {
    final map = <String, Variable>{};
    if (d.tasklistid.present) {
      map['tasklistid'] = Variable<int, IntType>(d.tasklistid.value);
    }
    if (d.tasklistname.present) {
      map['tasklistname'] = Variable<String, StringType>(d.tasklistname.value);
    }
    if (d.taskcreatedate.present) {
      map['taskcreatedate'] =
          Variable<DateTime, DateTimeType>(d.taskcreatedate.value);
    }
    if (d.taskcompleted.present) {
      map['taskcompleted'] = Variable<bool, BoolType>(d.taskcompleted.value);
    }
    return map;
  }

  @override
  $TasklistsTable createAlias(String alias) {
    return $TasklistsTable(_db, alias);
  }
}

class Listitem extends DataClass implements Insertable<Listitem> {
  final int listitemid;
  final int tasklistid;
  final String listname;
  final DateTime listcreatedate;
  final bool listcompleted;
  Listitem(
      {@required this.listitemid,
      @required this.tasklistid,
      @required this.listname,
      this.listcreatedate,
      @required this.listcompleted});
  factory Listitem.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Listitem(
      listitemid:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}listitemid']),
      tasklistid:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}tasklistid']),
      listname: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}listname']),
      listcreatedate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}listcreatedate']),
      listcompleted: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}listcompleted']),
    );
  }
  factory Listitem.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Listitem(
      listitemid: serializer.fromJson<int>(json['listitemid']),
      tasklistid: serializer.fromJson<int>(json['tasklistid']),
      listname: serializer.fromJson<String>(json['listname']),
      listcreatedate: serializer.fromJson<DateTime>(json['listcreatedate']),
      listcompleted: serializer.fromJson<bool>(json['listcompleted']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'listitemid': serializer.toJson<int>(listitemid),
      'tasklistid': serializer.toJson<int>(tasklistid),
      'listname': serializer.toJson<String>(listname),
      'listcreatedate': serializer.toJson<DateTime>(listcreatedate),
      'listcompleted': serializer.toJson<bool>(listcompleted),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Listitem>>(bool nullToAbsent) {
    return ListitemsCompanion(
      listitemid: listitemid == null && nullToAbsent
          ? const Value.absent()
          : Value(listitemid),
      tasklistid: tasklistid == null && nullToAbsent
          ? const Value.absent()
          : Value(tasklistid),
      listname: listname == null && nullToAbsent
          ? const Value.absent()
          : Value(listname),
      listcreatedate: listcreatedate == null && nullToAbsent
          ? const Value.absent()
          : Value(listcreatedate),
      listcompleted: listcompleted == null && nullToAbsent
          ? const Value.absent()
          : Value(listcompleted),
    ) as T;
  }

  Listitem copyWith(
          {int listitemid,
          int tasklistid,
          String listname,
          DateTime listcreatedate,
          bool listcompleted}) =>
      Listitem(
        listitemid: listitemid ?? this.listitemid,
        tasklistid: tasklistid ?? this.tasklistid,
        listname: listname ?? this.listname,
        listcreatedate: listcreatedate ?? this.listcreatedate,
        listcompleted: listcompleted ?? this.listcompleted,
      );
  @override
  String toString() {
    return (StringBuffer('Listitem(')
          ..write('listitemid: $listitemid, ')
          ..write('tasklistid: $tasklistid, ')
          ..write('listname: $listname, ')
          ..write('listcreatedate: $listcreatedate, ')
          ..write('listcompleted: $listcompleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      listitemid.hashCode,
      $mrjc(
          tasklistid.hashCode,
          $mrjc(listname.hashCode,
              $mrjc(listcreatedate.hashCode, listcompleted.hashCode)))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Listitem &&
          other.listitemid == listitemid &&
          other.tasklistid == tasklistid &&
          other.listname == listname &&
          other.listcreatedate == listcreatedate &&
          other.listcompleted == listcompleted);
}

class ListitemsCompanion extends UpdateCompanion<Listitem> {
  final Value<int> listitemid;
  final Value<int> tasklistid;
  final Value<String> listname;
  final Value<DateTime> listcreatedate;
  final Value<bool> listcompleted;
  const ListitemsCompanion({
    this.listitemid = const Value.absent(),
    this.tasklistid = const Value.absent(),
    this.listname = const Value.absent(),
    this.listcreatedate = const Value.absent(),
    this.listcompleted = const Value.absent(),
  });
  ListitemsCompanion copyWith(
      {Value<int> listitemid,
      Value<int> tasklistid,
      Value<String> listname,
      Value<DateTime> listcreatedate,
      Value<bool> listcompleted}) {
    return ListitemsCompanion(
      listitemid: listitemid ?? this.listitemid,
      tasklistid: tasklistid ?? this.tasklistid,
      listname: listname ?? this.listname,
      listcreatedate: listcreatedate ?? this.listcreatedate,
      listcompleted: listcompleted ?? this.listcompleted,
    );
  }
}

class $ListitemsTable extends Listitems
    with TableInfo<$ListitemsTable, Listitem> {
  final GeneratedDatabase _db;
  final String _alias;
  $ListitemsTable(this._db, [this._alias]);
  final VerificationMeta _listitemidMeta = const VerificationMeta('listitemid');
  GeneratedIntColumn _listitemid;
  @override
  GeneratedIntColumn get listitemid => _listitemid ??= _constructListitemid();
  GeneratedIntColumn _constructListitemid() {
    return GeneratedIntColumn('listitemid', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tasklistidMeta = const VerificationMeta('tasklistid');
  GeneratedIntColumn _tasklistid;
  @override
  GeneratedIntColumn get tasklistid => _tasklistid ??= _constructTasklistid();
  GeneratedIntColumn _constructTasklistid() {
    return GeneratedIntColumn('tasklistid', $tableName, false,
        $customConstraints:
            'REFERENCES tasklist(tasklistid) ON UPDATE CASCADE ON DELETE SET NULL');
  }

  final VerificationMeta _listnameMeta = const VerificationMeta('listname');
  GeneratedTextColumn _listname;
  @override
  GeneratedTextColumn get listname => _listname ??= _constructListname();
  GeneratedTextColumn _constructListname() {
    return GeneratedTextColumn('listname', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _listcreatedateMeta =
      const VerificationMeta('listcreatedate');
  GeneratedDateTimeColumn _listcreatedate;
  @override
  GeneratedDateTimeColumn get listcreatedate =>
      _listcreatedate ??= _constructListcreatedate();
  GeneratedDateTimeColumn _constructListcreatedate() {
    return GeneratedDateTimeColumn(
      'listcreatedate',
      $tableName,
      true,
    );
  }

  final VerificationMeta _listcompletedMeta =
      const VerificationMeta('listcompleted');
  GeneratedBoolColumn _listcompleted;
  @override
  GeneratedBoolColumn get listcompleted =>
      _listcompleted ??= _constructListcompleted();
  GeneratedBoolColumn _constructListcompleted() {
    return GeneratedBoolColumn('listcompleted', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [listitemid, tasklistid, listname, listcreatedate, listcompleted];
  @override
  $ListitemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'listitems';
  @override
  final String actualTableName = 'listitems';
  @override
  VerificationContext validateIntegrity(ListitemsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.listitemid.present) {
      context.handle(_listitemidMeta,
          listitemid.isAcceptableValue(d.listitemid.value, _listitemidMeta));
    } else if (listitemid.isRequired && isInserting) {
      context.missing(_listitemidMeta);
    }
    if (d.tasklistid.present) {
      context.handle(_tasklistidMeta,
          tasklistid.isAcceptableValue(d.tasklistid.value, _tasklistidMeta));
    } else if (tasklistid.isRequired && isInserting) {
      context.missing(_tasklistidMeta);
    }
    if (d.listname.present) {
      context.handle(_listnameMeta,
          listname.isAcceptableValue(d.listname.value, _listnameMeta));
    } else if (listname.isRequired && isInserting) {
      context.missing(_listnameMeta);
    }
    if (d.listcreatedate.present) {
      context.handle(
          _listcreatedateMeta,
          listcreatedate.isAcceptableValue(
              d.listcreatedate.value, _listcreatedateMeta));
    } else if (listcreatedate.isRequired && isInserting) {
      context.missing(_listcreatedateMeta);
    }
    if (d.listcompleted.present) {
      context.handle(
          _listcompletedMeta,
          listcompleted.isAcceptableValue(
              d.listcompleted.value, _listcompletedMeta));
    } else if (listcompleted.isRequired && isInserting) {
      context.missing(_listcompletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {listitemid};
  @override
  Listitem map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Listitem.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ListitemsCompanion d) {
    final map = <String, Variable>{};
    if (d.listitemid.present) {
      map['listitemid'] = Variable<int, IntType>(d.listitemid.value);
    }
    if (d.tasklistid.present) {
      map['tasklistid'] = Variable<int, IntType>(d.tasklistid.value);
    }
    if (d.listname.present) {
      map['listname'] = Variable<String, StringType>(d.listname.value);
    }
    if (d.listcreatedate.present) {
      map['listcreatedate'] =
          Variable<DateTime, DateTimeType>(d.listcreatedate.value);
    }
    if (d.listcompleted.present) {
      map['listcompleted'] = Variable<bool, BoolType>(d.listcompleted.value);
    }
    return map;
  }

  @override
  $ListitemsTable createAlias(String alias) {
    return $ListitemsTable(_db, alias);
  }
}

abstract class _$ToDoAppDatabase extends GeneratedDatabase {
  _$ToDoAppDatabase(QueryExecutor e)
      : super(const SqlTypeSystem.withDefaults(), e);
  $TasklistsTable _tasklists;
  $TasklistsTable get tasklists => _tasklists ??= $TasklistsTable(this);
  $ListitemsTable _listitems;
  $ListitemsTable get listitems => _listitems ??= $ListitemsTable(this);
  @override
  List<TableInfo> get allTables => [tasklists, listitems];
}
