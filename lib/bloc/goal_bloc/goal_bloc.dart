import 'package:bloc/bloc.dart';
import 'package:habittracker/model/goal/goal_dao.dart';
import 'package:habittracker/bloc/goal_bloc/bloc.dart';

class GoalBloc extends Bloc<GoalEvent, GoalState> {
  GoalDao _goalDao = GoalDao();

  @override
  GoalState get initialState => GoalsLoading();

  @override
  Stream<GoalState> mapEventToState(GoalEvent event) async*{
    if (event is LoadGoals) {
      yield GoalsLoading();
      yield* _reloadGoals();
    } else if (event is AddGoal) {
      await _goalDao.insert(event.goal);
      yield* _reloadGoals();
    } else if (event is UpdateGoal) {
      await _goalDao.update(event.goal);
      yield* _reloadGoals();
    } else if (event is DeleteGoal) {
      await _goalDao.delete(event.goal);
      yield* _reloadGoals();
    }
  }

  Stream<GoalState> _reloadGoals() async* {
    final goals = await _goalDao.getAllSortedByName();
    yield GoalsLoaded(goals);
  }
}