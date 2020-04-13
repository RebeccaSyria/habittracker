import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habittracker/bloc/habit_bloc/bloc.dart';
import 'package:habittracker/create_habit_page.dart';
import 'package:habittracker/widgets/habit_tile.dart';

class HabitList extends StatefulWidget {
  _HabitListState createState() => _HabitListState();
}
class _HabitListState extends State<HabitList> {
  static HabitBloc _habitBloc;

  @override
  void initState() {
    super.initState();
    _habitBloc = BlocProvider.of<HabitBloc>(context);
    _habitBloc.dispatch((LoadHabits()));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          _buildList(),
          RaisedButton(
            child: Text("Add New Habit"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateHabitPage(habitBloc: _habitBloc,)));
            },
          )
        ],
      ),
    );
  }
  
  BlocBuilder _buildList() {
    return BlocBuilder(
      bloc: _habitBloc,
      builder: (BuildContext context, dynamic state) {
        print(state.toString());
        if(state is HabitsLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HabitsLoaded) {
          if(state.habits.length > 0) {
            return ListView.builder(itemBuilder: (context, index) {
              final displayedHabit = state.habits[index];
              return HabitTile(habit: displayedHabit);
            },
                itemCount: state.habits.length
            );
          } else {
            return Card();
          }
        }
        else return Card();
      },
    );
  }
}