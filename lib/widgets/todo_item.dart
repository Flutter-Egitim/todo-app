import 'package:flutter/material.dart';
import 'package:flutter_ders_3/models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      leading: IconButton(
        icon: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
        ),
        onPressed: () {
          print("done button pressed");
        },
      ),
      trailing: IconButton(
        onPressed: () {
          print("delete button pressed");
        },
        icon: Icon(Icons.delete),
      ),
    );
  }
}
