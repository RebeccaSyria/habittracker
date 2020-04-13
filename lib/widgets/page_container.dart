import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habittracker/bloc/goal_bloc/bloc.dart';
import 'package:habittracker/bloc/habit_bloc/bloc.dart';
import 'package:habittracker/bloc/habit_bloc/habit_bloc.dart';
import 'package:habittracker/widgets/goal_list.dart';
import 'package:habittracker/widgets/habits_list.dart';
import 'package:habittracker/widgets/day_list.dart';

class PageContainer extends StatefulWidget {
  _PageContainerState createState() => _PageContainerState();
}

class _PageContainerState extends State<PageContainer> {
  int _index = 0;
  static List<Widget> _pageOptions = <Widget>[
    _buildHabitList(),
    _buildGoalList(),
    DayList()
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
            icon: Icon(Icons.calendar_today),
            title: Text('History'),
          )
        ],
        currentIndex: _index,
        onTap: _onItemTap,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTap(int newIndex) {
    setState(() {
      _index = newIndex;
    });
  }

  static Widget _buildHabitList() {
    return BlocProvider(
      bloc: HabitBloc(),
      child: HabitList(),
    );
  }

  static Widget _buildGoalList() {
    return BlocProvider(
      bloc: GoalBloc(),
      child: GoalList()
    );
  }
}