import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swiftask/providers/task_provider.dart';
import 'package:swiftask/screens/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => TaskProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiftask',
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue,
              iconTheme: IconThemeData(color: Colors.white, size: 27),
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22))),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const HomePage(),
      routes: {
        "./": (_) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
