import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:habittracker/model/habit.dart';

@immutable
abstract class HabitState extends Equatable {
  HabitState([List props = const[]]) : super(props);
}

class HabitsLoading extends HabitState {}

class HabitsLoaded extends HabitState {
  final List<Habit> habits;
  HabitsLoaded(this.habits) : super([habits]);
}