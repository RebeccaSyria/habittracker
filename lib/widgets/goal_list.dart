import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habittracker/bloc/goal_bloc/bloc.dart';
import 'package:habittracker/create_goal_page.dart';
import 'package:habittracker/model/goal/goal.dart';
import 'package:habittracker/view_goal_page.dart';

class GoalList extends StatefulWidget {
  _GoalListState createState() => _GoalListState();
}
class _GoalListState extends State<GoalList> {
  static GoalBloc _goalBloc;

  @override
  void initState() {
    super.initState();
    _goalBloc = BlocProvider.of<GoalBloc>(context);
    _goalBloc.dispatch(LoadGoals());
  }

  @override
  Widget build(BuildContext context) {
    final List<Goal> _goals = <Goal>[
      Goal(name: "test", points: 0),
      Goal(name: "test2", points: 1),
      Goal(name: "test3", points: -3),
      Goal(name: "test4", points: 5)
    ];
    return Card(
      child: Column(
        children: <Widget>[
          _buildGoalTile(_goals[0], context),
          _buildGoalTile(_goals[1], context),
          _buildGoalTile(_goals[2], context),
          _buildGoalTile(_goals[3], context),
          RaisedButton(
            child: Text("Create New Goal"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateGoalPage()));
            },
          )
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