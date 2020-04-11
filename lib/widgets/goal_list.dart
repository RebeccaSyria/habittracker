import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/model/goal.dart';

class GoalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Goal> _goals = <Goal>[
      Goal(name: "test"),
      Goal(name: "test2"),
      Goal(name: "test3"),
      Goal(name: "test4")
    ];
    return Card(
      child: Column(
        children: <Widget>[
          _buildGoalTile(_goals[0]),
          _buildGoalTile(_goals[1]),
          _buildGoalTile(_goals[2]),
          _buildGoalTile(_goals[3])
        ],
      ),
    );
  }

  Card _buildGoalTile(Goal goal) {
    return Card(
      child: Text(goal.name),
    );
  }
}