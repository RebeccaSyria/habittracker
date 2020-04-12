import 'package:sembast/sembast.dart';
import 'package:habittracker/app_db.dart';
import 'package:habittracker/model/habit/habit.dart';

class HabitDao {
  static const String HABIT_STORE_NAME = 'habits';

  final _habitStore = intMapStoreFactory.store(HABIT_STORE_NAME);

  Future<Database> get _db async => await AppDb.instance.database;

  Future insert(Habit habit) async {
    await _habitStore.add(await _db, habit.toMap());
  }

  Future update(Habit habit) async {
    final finder = Finder(filter: Filter.byKey(habit.id));

    await _habitStore.update(
      await _db,
      habit.toMap(),
      finder: finder
    );
  }

  Future delete(Habit habit) async {}

  Future getAllSortedByName() async {
    print("get all");
    final finder = Finder(sortOrders: [
      SortOrder('name')
    ]);
    final recordSnapshots = await _habitStore.find(
      await _db,
      finder: finder
    );
    print("found habits!");
    print(recordSnapshots);
    return recordSnapshots.map((snapshot) {
      final habit = Habit.fromMap(snapshot.value);
      habit.id = snapshot.key;
      return habit;
    }
    ).toList();
  }

}