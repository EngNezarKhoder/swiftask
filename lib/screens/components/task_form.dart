import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swiftask/model/task.dart';
import 'package:swiftask/providers/task_provider.dart';


class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  final TextEditingController _taskTitle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.read<TaskProvider>();
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        content: SizedBox(
          height: 120,
          width: 200,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const Positioned(
                  right: -36,
                  top: -36,
                  child: InkWell(
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Form(
                  key: _formkey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "The Filed Is Empty";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Add Task Title",
                    ),
                    controller: _taskTitle,
                  )),
              Positioned(
                  top: 65,
                  left: 70,
                  child: TextButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          taskProvider.addTask(
                              Task(title: _taskTitle.text, completed: false));
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text(
                        "Add Task",
                        style: TextStyle(fontSize: 17),
                      )))
            ],
          ),
        ));
  }
}
