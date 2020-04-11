import 'package:meta/meta.dart';

class Goal {
  int id;
  final String name;

  Goal({@required this.name});

  Map<String, dynamic> toMap() {
    return {
      'name': name
    };
  }

  static Goal fromMap(Map<String,dynamic> map) {
    return Goal(
      name: map['name']
    );
  }

}