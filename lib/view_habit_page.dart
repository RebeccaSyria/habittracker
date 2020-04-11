import 'package:flutter/material.dart';

class ViewHabitPage extends  StatelessWidget {
  static Map<String,bool> _mockDayMap = {
    "sunday": false,
    "monday": true,
    "tuesday": false,
    "wednesday": false,
    "thursday": true,
    "friday": true,
    "saturday": true
  };

  static final List<String> _dayList = [
    "sunday",
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday",
    "saturday"
  ];
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(title: Text('Habit Name'),),
      body: Column(
        children: <Widget>[
          Card(
            child: Text("Attached Goal Name"),
          ),
          _buildDaysCard(),
          _buildPositiveCard(true),
          _buildPointsCard(0)

        ],
      ),
    )
    );
  }

  Card _buildDaysCard() {
    return Card(
      child: Row(
        children: <Widget>[
          Card(
            child: Text("Days:"),
          ),
          _buildDaysFromMap(_mockDayMap),
        ],
      ),
    );
  }

  Card _buildDaysFromMap(Map<String, bool> map) {
    List<Widget> dayRow = [];
    for (String day in _dayList) {
      if(map[day]) {
        dayRow.add(
          Card(
            child: Text(day),
          )
        );
      }
    }
    return Card(
      child: Row(
        children: dayRow,
      ),
    );
  }

  Card _buildPositiveCard(bool positive) {
    if(positive) {
      return Card(
        child: Text("this is a positive habit"),
        color: Colors.greenAccent,
      );
    } else {
      return Card(
        child: Text("this is a negative habit"),
        color: Colors.redAccent,
      );
    }
  }
  
  Card _buildPointsCard(int points) {
    return Card(
      child: Row(
        children: <Widget>[
          Card(
            child: Text("Points: " + points.toString()),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.exposure_plus_1),
            color: Colors.greenAccent,
          ),
          IconButton(
            icon: Icon(Icons.exposure_neg_1),
            color: Colors.redAccent,
          )
        ],
      )
    );
  }
}