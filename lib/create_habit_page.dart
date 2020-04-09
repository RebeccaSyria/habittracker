import 'package:flutter/material.dart';

class CreateHabitPage extends StatefulWidget {
  _CreateHabitPageState createState() => _CreateHabitPageState();
}
class _CreateHabitPageState extends State<CreateHabitPage> {
  Map<String,bool> _weekdays = Map();
  String _habitTitle;
  String dropdownValue = "one";

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
              print(_habitTitle);
            },
          ),
          DropdownButton(
            value: dropdownValue,
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
                dropdownValue = newValue;
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
          RaisedButton(
            child: Text("Submit"),
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
