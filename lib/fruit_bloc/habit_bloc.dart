import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:habittracker/model/habit_dao.dart';
import './bloc.dart';

class HabitBloc extends Bloc<HabitEvent, HabitState> {
  HabitDao _habitDao = HabitDao();

  @override
  HabitState get initialState => HabitsLoading();

  @override
  Stream<HabitState> mapEventToState(HabitEvent event) async* {
    if (event is LoadHabits) {
      yield HabitsLoading();
//      yield* _reloadHabits();
    } else if (event is AddHabit) {

    }
  }
}