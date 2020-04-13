import 'package:bloc/bloc.dart';

import 'package:habittracker/bloc/goal_bloc/goal_event.dart';
import 'package:habittracker/bloc/goal_bloc/goal_state.dart';

class GoalBloc extends Bloc<GoalEvent, GoalState> {
  @override
  GoalState get initialState => GoalsLoading();

  @override
  Stream<GoalState> mapEventToState(GoalEvent event) {
    // TODO: implement mapEventToState
    return null;
  }
}