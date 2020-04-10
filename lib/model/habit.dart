import 'package:meta/meta.dart';

class Habit {
  int id;

  final String name;
  final bool positive;
  final String goal;
  final Map<String,bool> days;

  Habit({
    @required this.name,
    @required this.positive,
    @required this.goal,
    @required this.days
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'positive': positive,
      'goal': goal,
      'days': days
    };
  }

  static Habit fromMap(Map<String, dynamic> map) {
    return Habit(
      name: map['name'],
      positive: map['positive'],
      goal: map['goal'],
      days: map['days']
    );
  }

}