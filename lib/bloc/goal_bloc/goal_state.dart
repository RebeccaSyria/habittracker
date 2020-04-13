import 'package:equatable/equatable.dart';
import 'package:habittracker/model/goal/goal.dart';
import 'package:meta/meta.dart';

@immutable
abstract class GoalState extends Equatable {
  GoalState([List props = const[]]) : super(props);
}

class GoalsLoading extends GoalState {
  GoalsLoading() : super();
}

class GoalsLoaded extends GoalState {
  final List<Goal> goals;
  GoalsLoaded(this.goals) : super([goals]);
}