import 'package:sembast/sembast.dart';
import 'package:habittracker/app_db.dart';
import 'package:habittracker/model/day/day.dart';

class DayDao {
  static const String DAY_STORE_NAME = 'days';

  final _dayStore = intMapStoreFactory.store(DAY_STORE_NAME);

  Future<Database> get _db async => await AppDb.instance.database;

  Future insert(Day day) async {
    await _dayStore.add(await _db, day.toMap());
  }

  Future update(Day day) async {
    final finder = Finder(filter: Filter.byKey(day.id));
    await _dayStore.update(await _db, day.toMap(), finder: finder);
  }

  Future getAllSortedByDate() async {
    final finder = Finder(sortOrders: [
      SortOrder('year'),
      SortOrder('month'),
      SortOrder('date')
    ]);
    final recordSnapshots = await _dayStore.find(await _db, finder: finder);
    return recordSnapshots.map((snapshot) {
      final day = Day.fromMap(snapshot.value);
      return day;
    }).toList();
  }

}