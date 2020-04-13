import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:habittracker/model/day/day.dart';

@immutable
abstract class DayState extends Equatable {
  DayState([List props = const[]]) : super(props);
}

class DaysLoading extends DayState {
  DaysLoading() : super();
}

class DaysLoaded extends DayState {
  final List<Day> days;
  DaysLoaded(this.days) : super([days]);
}