import 'package:realm/realm.dart';


@RealmModel()
class TaskModel {
  late String title;
  late String description;
  bool? isDone;
  bool? isDeleted;

}