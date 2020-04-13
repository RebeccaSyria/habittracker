import 'package:equatable/equatable.dart';
import 'package:habittracker/model/goal/goal.dart';

abstract class GoalEvent extends Equatable {
  GoalEvent([List props = const[]]) : super(props);
}

class LoadGoals extends GoalEvent {
  LoadGoals() : super();
}

class AddGoal extends GoalEvent {
  final Goal goal;
  AddGoal(this.goal) : super([goal]);
}

class UpdateGoal extends GoalEvent {
  final Goal goal;
  UpdateGoal(this.goal) : super([goal]);
}

class DeleteGoal extends GoalEvent {
  final Goal goal;
  DeleteGoal(this.goal) : super([goal]);
}