import 'package:flutter/material.dart';
import 'package:my_flutter_todo/features/todo_list/widgets/widgets.dart';
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
            leading: todoList[index].isFinish == true
                ? const Icon(
                    Icons.check_box,
                    color: Colors.cyan,
                  )
                : const Icon(Icons.check_box_outline_blank),
            title: Text(
              todoList[index].title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    decoration: todoList[index].isFinish == true
                        ? TextDecoration.lineThrough
                        : null,
                  ),
            ),
            onTap: () {
              setState(() {
                final bool isFinish = todoList[index].isFinish ?? false;

                todoList[index].isFinish = !isFinish;
              });
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          color: Colors.indigoAccent,
        ),
        itemCount: todoList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AddTaskAlert(
              onChanged: (value) {
                setState(() {
                  todoList.add(TaskModel(id: todoList.length, title: value));
                });
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
