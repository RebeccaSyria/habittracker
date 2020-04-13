import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:habittracker/bloc/goal_bloc/bloc.dart';

@immutable
class GoalBloc extends Bloc<GoalEvent, GoalState> {
  @override
  GoalState get initialState => GoalsLoading();

  @override
  Stream<GoalState> mapEventToState(GoalEvent event) {
    // TODO: implement mapEventToState
    return null;
  }
}