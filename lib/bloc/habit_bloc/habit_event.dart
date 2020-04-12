import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:habittracker/model/habit/habit.dart';

@immutable
abstract class HabitEvent extends Equatable {
  HabitEvent([List props = const []]) : super(props);
}

class LoadHabits extends HabitEvent {
  LoadHabits() : super();
}

class AddHabit extends HabitEvent {
  final Habit habit;
  AddHabit(this.habit) : super([habit]);
}

class UpdateHabit extends HabitEvent {
  final Habit habit;
  UpdateHabit(this.habit) : super([habit]);
}

class DeleteHabit extends HabitEvent {
  final Habit habit;

  DeleteHabit(this.habit) : super([habit]);
}