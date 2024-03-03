import 'package:flutter/material.dart';

class AddTaskAlert extends StatefulWidget {
  final Function onChanged;
  const AddTaskAlert({super.key, required this.onChanged});

  @override
  State<AddTaskAlert> createState() => _AddTaskAlertState();
}

class _AddTaskAlertState extends State<AddTaskAlert> {
  String _newTask = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Task'),
      content: TextField(
        onChanged: (value) {
          setState(() {
            _newTask = value;
          });
        },
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            widget.onChanged(_newTask);
            Navigator.pop(context, 'Cancel');
          },
          child: const Text('Save'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
