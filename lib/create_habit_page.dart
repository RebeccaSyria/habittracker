import 'package:flutter/material.dart';
import 'package:habittracker/model/habit.dart';

class CreateHabitPage extends StatefulWidget {
  _CreateHabitPageState createState() => _CreateHabitPageState();
}
class _CreateHabitPageState extends State<CreateHabitPage> {
  Map<String,bool> _weekdays = Map();
  String _habitTitle;
  String _goal = "one";
  bool _positiveHabit = true;

  @override
  void initState() {
    super.initState();
    _weekdays = {
      "Sunday": false,
      "Monday": false,
      "Tuesday": false,
      "Wednesday": false,
      "Thursday": false,
      "Friday": false,
      "Saturday":false
    };
    _habitTitle = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create a new habit')),
      body: Column(
        children: <Widget>[
          Text("Habit Title:"),
          TextField(
            onChanged: (query) {
              setState(() {
                _habitTitle = query;
              });
            },
          ),
          DropdownButton(
            value: _goal,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(
                color: Colors.deepPurple
            ),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                _goal = newValue;
              });
            },
            items: <String>['one', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
                .toList(),

          ),
          Text("What days would you like to perform this habit?"),
          Row(
            children: <Widget>[
              _buildCheckBox("Sunday"),
              _buildCheckBox("Monday"),
              _buildCheckBox("Tuesday"),
              _buildCheckBox("Wednesday"),
              _buildCheckBox("Thursday"),
              _buildCheckBox("Friday"),
              _buildCheckBox("Saturday")
            ],
          ),
          CheckboxListTile(
            title: Text("Positive Habit?"),
            value: _positiveHabit,
            onChanged: (bool newValue) {
              setState(() {
                _positiveHabit = newValue;
              });
            },
          ),
          RaisedButton(
            child: Text("Submit"),
            onPressed: () {
              Habit habit = Habit(name: _habitTitle, positive: _positiveHabit, goal: _goal, days: _weekdays);
              Navigator.pop(context);
            },
          )
        ],
      )

      );
  }

  Column _buildCheckBox(String day) {
    return Column(
      children: <Widget>[
        Text(day[0] + day[1]),
        Checkbox(
          value: _weekdays[day],
          onChanged: (bool newValue) {
            setState(() {
              _weekdays[day] = newValue;
            });
          },
        )
      ],
    );
  }
}
