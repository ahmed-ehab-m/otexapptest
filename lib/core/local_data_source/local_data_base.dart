import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/home/data/models/clothes_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDataSource {
  static Database? db;
  // singleton pattern
  static Future<Database> get instance async {
    if (db != null) {
      return db!;
    }
    final path = join(await getDatabasesPath(), 'app.db');
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE $kClothesTableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        image TEXT,
        price REAL,
        numeberOfSales REAL
        )
''');
      },
    );
    return db!;
  }

  //////Store clothes/////
  static Future<void> storeClothes(List<ClothesModel> clothesList) async {
    final db = await instance;
    final count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $kClothesTableName'),
    );
    if (count == 0) {
      for (var item in clothesList) {
        await db.insert(
          'clothes',
          item.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    }
  }
}
