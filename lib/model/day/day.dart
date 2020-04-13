import 'package:habittracker/model/habit/habit.dart';
import 'package:meta/meta.dart';

class Day {
  int id;

  final int year;
  final int month;
  final int date;
  final String weekday;

  Map<Habit, int> habits;

  Day({
    this.id,
    @required this.year,
    @required this.month,
    @required this.date,
    @required this.weekday,
    this.habits
  })  {
    this.id = int.parse(year.toString() + month.toString() + date.toString());
  }

  Map<String,dynamic> toMap() {
    return {
      'id': id,
      'year': year,
      'month': month,
      'date': date,
      'weekday': weekday,
      'habits': habits
    };
  }

  static Day fromMap(Map<String, dynamic> map) {
    return Day(
      id: map['id'],
      year: map['year'],
      month: map['month'],
      date: map['date'],
      weekday: map['weekday'],
      habits: map['habits']
    );
  }
}