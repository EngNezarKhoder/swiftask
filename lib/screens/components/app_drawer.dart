import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text("القائمة الجانبية"),
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today, size: 28,),
            title: const Text(
              'التقويم',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(Icons.alarm, size: 28,),
            title: const Text(
              'تنبيه',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
