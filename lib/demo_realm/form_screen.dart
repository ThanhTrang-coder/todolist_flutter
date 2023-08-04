import 'dart:io';

import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:todos_flutter/demo_realm/detail_model.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var config = Configuration.local([DetailModel.schema]);
    Realm realm;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Detail'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Enter name'),
              controller: nameController,
            ),
          ),
          const SizedBox(height: 10,),
          GestureDetector(
            onTap: () async {
              print('Current ID: $pid');
              realm = Realm(config);
              realm.all<DetailModel>().changes.listen((event) {
                print('listen callback called');
              });
              await Future<void>.delayed(const Duration(seconds: 1));
              var detailModel = DetailModel('name');
              realm.write(() => () {
                print('adding details');
                detailModel.name = nameController.text;
                realm.add(detailModel);
              });
            },
            child: const Text('Add data'),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              print('Getting all data from the Realm');
              var config = Configuration.local([DetailModel.schema]);
              Realm realm = Realm(config);
              var detailList = realm.all<DetailModel>();
              print('There are ${detailList.length} in the Realm');
              Center(child: Text('There are ${detailList.length} in the Realm'),);
            },
            child: const Text('Get all data'),
          )
        ],
      ),
    );
  }
}