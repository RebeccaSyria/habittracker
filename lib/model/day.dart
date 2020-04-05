import 'package:habittracker/model/habit.dart';
import 'package:meta/meta.dart';

class Day {
  int id;

  final int year;
  final int month;
  final int date;
  final String weekday;

  Map<Habit, int> habits;

  Day({
    @required this.year,
    @required this.month,
    @required this.date,
    @required this.weekday
  })  {
    this.id = int.parse(year.toString() + month.toString() + date.toString());
  }
}