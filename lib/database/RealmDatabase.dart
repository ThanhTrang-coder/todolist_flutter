import 'package:realm/realm.dart';
import 'package:todos_flutter/models/task_model.dart';

class RealmDatabase {
  static RealmDatabase? _instance;
   final config = Configuration.local([TaskModel.schema], schemaVersion: 1);
   late Realm realm;

   RealmDatabase._(){
     realm = Realm(config);
   }
   // RealmDatabase() {
   //   realm = Realm(config);
   // }

   factory RealmDatabase() => _instance ??= RealmDatabase._();

   RealmResults<TaskModel> getAllTask() {
     return realm.all<TaskModel>();
   }
   
   void addTask(TaskModel task) {
     task.isDone = false;
     realm.write(() {
       realm.add(task);
     });
   }
   
   void updateTask(TaskModel task) {
     if(task.isDone == false) {
       realm.write(() {
         task.isDone = true;
       });
     } else if (task.isDone == true) {
       realm.write(() {
         task.isDone = false;
       });
     }

   }

   void deleteTask(TaskModel task) {
     realm.write(() {
       realm.delete(task);
     });
   }
}