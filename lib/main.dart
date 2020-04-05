import 'package:flutter/material.dart';
import 'package:habittracker/fruit_bloc/fruit_bloc.dart';
import 'package:habittracker/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
    return BlocProvider(
      bloc: FruitBloc(),

      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.deepPurpleAccent,
        ),
        home: HomePage(),
      ),

    );
  }
}
