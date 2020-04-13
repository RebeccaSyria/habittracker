import 'package:equatable/equatable.dart';
import 'package:habittracker/model/day/day.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DayEvent extends Equatable {
  DayEvent([List props = const []]) : super(props);
}

class LoadDays extends DayEvent {
  LoadDays() : super();
}

class AddDay extends DayEvent {
  final Day day;
  AddDay(this.day) : super([day]);
}

class UpdateDay extends DayEvent {
  final Day day;
  UpdateDay(this.day) : super([day]);
}