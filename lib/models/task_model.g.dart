// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class TaskModel extends _TaskModel
    with RealmEntity, RealmObjectBase, RealmObject {
  TaskModel(
    String title,
    String description, {
    bool? isDone,
    bool? isDeleted,
  }) {
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'isDone', isDone);
    RealmObjectBase.set(this, 'isDeleted', isDeleted);
  }

  TaskModel._();

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => throw RealmUnsupportedSetError();

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) => throw RealmUnsupportedSetError();

  @override
  bool? get isDone => RealmObjectBase.get<bool>(this, 'isDone') as bool?;
  @override
  set isDone(bool? value) => RealmObjectBase.set(this, 'isDone', value);

  @override
  bool? get isDeleted => RealmObjectBase.get<bool>(this, 'isDeleted') as bool?;
  @override
  set isDeleted(bool? value) => RealmObjectBase.set(this, 'isDeleted', value);

  @override
  Stream<RealmObjectChanges<TaskModel>> get changes =>
      RealmObjectBase.getChanges<TaskModel>(this);

  @override
  TaskModel freeze() => RealmObjectBase.freezeObject<TaskModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(TaskModel._);
    return const SchemaObject(ObjectType.realmObject, TaskModel, 'TaskModel', [
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('isDone', RealmPropertyType.bool, optional: true),
      SchemaProperty('isDeleted', RealmPropertyType.bool, optional: true),
    ]);
  }
}
