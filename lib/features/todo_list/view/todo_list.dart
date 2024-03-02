import 'package:flutter/material.dart';
import 'package:my_flutter_todo/models/task_model.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<TaskModel> todoList = [
    TaskModel(id: 1, title: "First task"),
    TaskModel(id: 2, title: "Second task", isFinish: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            dense: true,
            leading: const Icon(Icons.circle_outlined),
            title: Text(
              todoList[index].title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          color: Colors.indigoAccent,
        ),
        itemCount: todoList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
