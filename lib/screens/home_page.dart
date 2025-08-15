import 'package:flutter/material.dart';
import 'package:swiftask/screens/components/app_drawer.dart';
import 'package:swiftask/screens/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text("قائمتي"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (_) => [
                    const PopupMenuItem(
                        child: const Text(
                      "المهام المنجزة",
                      style: TextStyle(fontSize: 18),
                    )),
                    const PopupMenuItem(
                        child: const Text(
                      "المهام غير المنجزة",
                      style: TextStyle(fontSize: 18),
                    )),
                  ])
        ],
      ),
      body: const Body(),
    );
  }
}
