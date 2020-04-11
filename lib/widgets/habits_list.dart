import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/create_habit_page.dart';
import 'package:habittracker/model/habit/habit.dart';
import 'package:habittracker/widgets/habit_tile.dart';

class HabitList extends StatelessWidget {
  static Map<String,bool> _dayMap = {};
  final List<Habit> _habits = <Habit>[
    Habit(name: "test1", positive: true,goal: "", days: _dayMap),
    Habit(name: "test2", positive: true,goal: "", days: _dayMap),
    Habit(name: "test3", positive: true,goal: "", days: _dayMap),
    Habit(name: "test4", positive: true,goal: "", days: _dayMap)
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          HabitTile(habit: _habits[0]),
          HabitTile(habit: _habits[1]),
          HabitTile(habit: _habits[2]),
          HabitTile(habit: _habits[3]),
          RaisedButton(
            child: Text("Add New Habit"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateHabitPage()));
            },
          )
        ],
      ),
    );
  }
}