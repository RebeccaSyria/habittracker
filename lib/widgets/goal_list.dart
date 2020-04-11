import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/model/goal.dart';
import 'package:habittracker/view_goal_page.dart';

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
          _buildGoalTile(_goals[0], context),
          _buildGoalTile(_goals[1], context),
          _buildGoalTile(_goals[2], context),
          _buildGoalTile(_goals[3], context)
        ],
      ),
    );
  }

  Card _buildGoalTile(Goal goal, BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Text(goal.name),
          IconButton(
            icon: Icon(Icons.assignment),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ViewGoalPage()));
            })
    ]
      ),
    );
  }
}