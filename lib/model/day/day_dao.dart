import 'package:sembast/sembast.dart';
import 'package:habittracker/app_db.dart';
import 'package:habittracker/model/day/day.dart';

class DayDao {
  static const String DAY_STORE_NAME = 'days';

  final _dayStore = intMapStoreFactory.store(DAY_STORE_NAME);

  Future<Database> get _db async => await AppDb.instance.database;


}