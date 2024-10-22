import 'package:flutter/material.dart';
import 'package:todoapp/appthem.dart';
import 'package:todoapp/main.dart';
import 'package:todoapp/taps/tasks/settings/settingstap.dart';
import 'package:todoapp/taps/tasks/tasktap.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> taps = [Tasktap(), Settingstap()];
  int currentindextap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: taps[currentindextap],
      bottomNavigationBar: BottomAppBar(
        color: Appthem.white,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavigationBar(
          currentIndex: currentindextap,
          onTap: (index) => setState(() => currentindextap = index),
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: 'Tasks', icon: Icon(Icons.list)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(size: 32, Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}