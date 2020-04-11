import 'package:meta/meta.dart';

class Goal {
  int id;
  final String name;
  final int points;

  Goal({ @required this.name, @required this.points});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'points': points
    };
  }

  static Goal fromMap(Map<String,dynamic> map) {
    return Goal(
      name: map['name'],
      points: map['points']
    );
  }

}