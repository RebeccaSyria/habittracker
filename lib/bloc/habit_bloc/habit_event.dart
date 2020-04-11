import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:habittracker/model/habit/habit.dart';

@immutable
abstract class HabitEvent extends Equatable {
  HabitEvent([List props = const []]) : super(props);
}

class LoadHabits extends HabitEvent {}

class AddHabit extends HabitEvent {}

class UpdateHabit extends HabitEvent {}

class DeleteHabit extends HabitEvent {
  final Habit habit;

  DeleteHabit(this.habit) : super([habit]);
}