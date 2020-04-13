import 'package:habittracker/model/goal/goal.dart';
import 'package:sembast/sembast.dart';
import 'package:habittracker/app_db.dart';

class GoalDao {
  static const String GOAL_STORE_NAME = "goals";

  final _goalStore = intMapStoreFactory.store(GOAL_STORE_NAME);

  Future<Database> get _db async => await AppDb.instance.database;

  Future insert(Goal goal) async {
    await _goalStore.add(await _db, goal.toMap());
  }

  Future update(Goal goal) async {
    final finder = Finder(filter: Filter.byKey(goal.id));
    await _goalStore.update(await _db, goal.toMap(), finder: finder);
  }

  Future delete(Goal goal) async {}

  Future getAllSortedByName() async {
    final finder = Finder(sortOrders: [
      SortOrder('name')
    ]);
    final recordSnapshots = await _goalStore.find(await _db, finder: finder);
    return recordSnapshots.map((snapshot) {
      final goal = Goal.fromMap(snapshot.value);
      goal.id = snapshot.key;
      return goal;
    }).toList();
  }
}