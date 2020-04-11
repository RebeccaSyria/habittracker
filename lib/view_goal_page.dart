import 'package:flutter/material.dart';

import 'package:habittracker/create_habit_page.dart';

class ViewGoalPage extends StatelessWidget {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateHabitPage()));
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
          buildHabitTile("habit 1"),
          buildHabitTile("habit 2"),
          buildHabitTile("habit 3")
        ],
      ),
    );
  }

  Card buildHabitTile(String habitName) {
    return Card(
      child: Row(
        children: <Widget>[
          Text(habitName),
          IconButton(
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}