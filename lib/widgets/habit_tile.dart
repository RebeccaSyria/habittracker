import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/model/habit.dart';

class HabitTile extends StatelessWidget {
  final Habit habit;

  HabitTile({this.habit});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Text(habit.name),
          IconButton(
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}