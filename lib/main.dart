import 'package:flutter/material.dart';
import 'package:todoapp/appthem.dart';
import 'package:todoapp/homescreen.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {Homescreen.routeName: (_) => Homescreen()},
      initialRoute: Homescreen.routeName,
      debugShowCheckedModeBanner: false,
      theme: Appthem.lighttheme,
      darkTheme: Appthem.darktheme,
      themeMode: ThemeMode.light,
    );
  }
}
