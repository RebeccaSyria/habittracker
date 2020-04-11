import 'package:flutter/material.dart';

import 'package:habittracker/create_habit_page.dart';
import 'package:habittracker/model/habit/habit.dart';
import 'package:habittracker/widgets/habit_tile.dart';

class ViewGoalPage extends StatelessWidget {
  static Map<String, bool> _dayMap = {};
  static Habit _mockHabit = Habit(
      name: "testhabit", positive: true, goal: "", days: _dayMap);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goal Name Here'),),
      body: Column(
        children: <Widget>[
          buildHabitColumn(),
          RaisedButton(
              child: Text("Add new habit"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateHabitPage()));
              }
          )
        ],
      ),
    );
  }

  Card buildHabitColumn() {
    return Card(
      child: Column(
        children: <Widget>[
          buildHabitTile(_mockHabit),
          buildHabitTile(_mockHabit),
          buildHabitTile(_mockHabit)
        ],
      ),
    );
  }

  HabitTile buildHabitTile(Habit habit) {
    return HabitTile(
      habit: _mockHabit,
    );
  }
}