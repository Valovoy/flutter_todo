import 'package:flutter/material.dart';
import 'package:my_flutter_todo/theme/theme.dart';

import 'features/todo_list/view/view.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: TodoList(),
    );
  }
}
