import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:habittracker/model/habit/habit_dao.dart';
import 'package:habittracker/bloc/habit_bloc/bloc.dart';

class HabitBloc extends Bloc<HabitEvent, HabitState> {
  HabitDao _habitDao = HabitDao();

  @override
  HabitState get initialState => HabitsLoading();

  @override
  Stream<HabitState> mapEventToState(HabitEvent event) async* {
    print("TEST");
    print(event.toString());
    if (event is LoadHabits) {
      print("test");
      yield HabitsLoading();
      yield* _reloadHabits();
    } else if (event is AddHabit) {
      await _habitDao.insert(event.habit);
      yield* _reloadHabits();
    } else if (event is UpdateHabit) {
      await _habitDao.update(event.habit);
      yield* _reloadHabits();
    } else if (event is DeleteHabit) {
      await _habitDao.delete(event.habit);
      yield* _reloadHabits();
    }
  }

  Stream<HabitState> _reloadHabits() async* {
    print("reload habits");
    final habits = await _habitDao.getAllSortedByName();
    print(habits);
    yield HabitsLoaded(habits);
    print("12345");
  }
}