import 'package:flutter/material.dart';
import 'package:swiftask/screens/components/add_task_button.dart';
import 'package:swiftask/screens/components/task_list.dart';
import 'package:swiftask/screens/components/welcome.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Welcome(
          name: "Swiftask",
          imageName: "me.jpg",
        ),
        AddTaskButton(),
        TaskList()
      ],
    );
  }
}
