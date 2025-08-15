import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swiftask/providers/task_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: taskProvider.tasks.length,
          itemBuilder: (context, index) {
            return Card(
              child: Dismissible(
                onDismissed: (direction) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    taskProvider.removeTask(index);
                  });
                },
                direction: DismissDirection.endToStart,
                key: Key(index.toString()),
                background: Container(
                  alignment: Alignment.centerRight,
                  color: const Color.fromARGB(255, 196, 26, 14),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                child: ListTile(
                  onTap: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                    taskProvider.makeTaskCompleted(index);
                  });
                  },
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  title: Text(
                    taskProvider.tasks[index].title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  trailing: taskProvider.tasks[index].completed
                      ? const Icon(Icons.radio_button_checked)
                      : const Icon(Icons.radio_button_unchecked),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
