import 'package:flutter/material.dart';
import 'package:habittracker/model/goal/goal.dart';

class CreateGoalPage extends StatefulWidget {
  _CreateGoalPageState createState() => _CreateGoalPageState();
}

class _CreateGoalPageState extends State<CreateGoalPage> {
  String _goalName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create a new goal')),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter a name for your goal'),
              onChanged: (query) {
                setState(() {
                  _goalName = query;
                });
              },
            ),
          ),
          RaisedButton(
            child: Text("Submit"),
            onPressed: () {
              Goal goal = Goal(name: _goalName);
              print(goal);
              //TODO dispatch AddGoal here
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
