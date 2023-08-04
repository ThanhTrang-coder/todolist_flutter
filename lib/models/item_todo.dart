
import 'package:flutter/material.dart';

class BuildItemTodo extends StatelessWidget {
  const BuildItemTodo({super.key});

  ListTile _tile(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon,),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _tile('title', Icons.check_box_outline_blank);
  }
}