import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/widgets/goal_list.dart';
import 'package:habittracker/widgets/habits_list.dart';
import 'package:habittracker/widgets/settings.dart';

class PageContainer extends StatefulWidget {
  _PageContainerState createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  int _index = 0;
  static List<Widget> _pageOptions = <Widget>[
    HabitList(),
    GoalList(),
    SettingsCard()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Habit Tracker"),
      ),
      body: _pageOptions[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Habits'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Goals'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _index,
        onTap: _onItemTap,
      ),
    );
  }

  void _onItemTap(int newIndex) {
    setState(() {
      _index = newIndex;
    });
  }
}