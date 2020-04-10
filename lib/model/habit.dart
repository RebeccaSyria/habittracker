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



}