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
        CREATE TABLE CLOTHES(
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
  Future<void> storeClothes(ClothesModel clothesModel) async {
    final db = await instance;
    await db.insert(
      'CLOTHES',
      clothesModel.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
