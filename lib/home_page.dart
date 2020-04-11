import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habittracker/model/fruit.dart';
import 'package:habittracker/bloc/habit_bloc/bloc.dart';
import 'package:habittracker/view_goal_page.dart';
import 'package:habittracker/widgets/page_container.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  FruitBloc _fruitBloc;
//
//  @override
//  void initState() {
//    super.initState();
//    // Obtaining the FruitBloc instance through BlocProvider which is an InheritedWidget
//    _fruitBloc = BlocProvider.of<FruitBloc>(context);
//    // Events can be passed into the bloc by calling dispatch.
//    // We want to start loading fruits right from the start.
//    _fruitBloc.dispatch(LoadFruits());
//  }

  @override
  Widget build(BuildContext context) {
    return PageContainer();
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Welcome to Habit Tracker!'),
//      ),
//      body: _buildBody(),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        onPressed: () {
//          Navigator.push(context, MaterialPageRoute(builder: (context) => ViewGoalPage()));
//        },
//      ),
//    );
  }

//  BlocBuilder _buildBody() {
//    return BlocBuilder(
//      bloc: _fruitBloc,
//      // Whenever there is a new state emitted from the bloc, builder runs.
//      builder: (BuildContext context, dynamic state) {
//        if (state is FruitsLoading) {
//          return Center(
//            child: CircularProgressIndicator(),
//          );
//        } else if (state is FruitsLoaded) {
//          return ListView.builder(
//            itemCount: state.fruits.length,
//            itemBuilder: (context, index) {
//              final displayedFruit = state.fruits[index];
//              return ListTile(
//                title: Text(displayedFruit.name),
//                subtitle:
//                Text(displayedFruit.isSweet ? 'Very sweet!' : 'Sooo sour!'),
//                trailing: _buildUpdateDeleteButtons(displayedFruit),
//              );
//            },
//          );
//        }
//      },
//    );
//  }
//
//  Row _buildUpdateDeleteButtons(Fruit displayedFruit) {
//    return Row(
//      mainAxisSize: MainAxisSize.min,
//      children: <Widget>[
//        IconButton(
//          icon: Icon(Icons.refresh),
//          onPressed: () {
//            _fruitBloc.dispatch(UpdateWithRandomFruit(displayedFruit));
//          },
//        ),
//        IconButton(
//          icon: Icon(Icons.delete_outline),
//          onPressed: () {
//            _fruitBloc.dispatch(DeleteFruit(displayedFruit));
//          },
//        ),
//      ],
//    );
//  }
}