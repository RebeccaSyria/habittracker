import 'package:flutter/material.dart';

class DayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          _dayTile(),
          _dayTile(),
          _dayTile()
        ],
      ),
    );
  }

  Card _dayTile() {
    return Card(
      child: Row(
        children: <Widget>[
          Text("mm/dd/yyyy",
          style: TextStyle(fontSize: 16),),
          Spacer(),
          Card(
            child: Text("#"),
            color: Colors.greenAccent,
          ),
          Card(
            child: Text("#"),
            color: Colors.redAccent,
          )
        ],
      ),
    );
  }
}