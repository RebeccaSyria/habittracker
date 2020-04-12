import 'package:flutter/material.dart';
import 'package:habittracker/bloc/habit_bloc/bloc.dart';
import 'package:habittracker/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habittracker/widgets/page_container.dart';


void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wrapping the whole app with BlocProvider to get access to FruitBloc everywhere
    // BlocProvider extends InheritedWidget.
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepPurpleAccent,
        ),
        home: PageContainer(),
      );

  }
}
