import 'package:flutter/material.dart';
import 'package:flutter_ders_3/models/todo.dart';
import 'package:flutter_ders_3/widgets/todo_item.dart';

import '../constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Todo> todolist = Todo.todolist();

    return Container(
      color: backgroundColor,
      child: Expanded(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "All Todo's",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: titleTextColor,
                  letterSpacing: -3,
                ),
              ),
            ),
            for (var todo in todolist) TodoItem(todo: todo),
          ],
        ),
      ),
    );
  }
}
