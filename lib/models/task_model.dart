import 'package:realm/realm.dart';
part 'task_model.g.dart';

@RealmModel()
class _TaskModel {
  late final String title;
  late final String description;
  bool? isDone;
  bool? isDeleted;
}