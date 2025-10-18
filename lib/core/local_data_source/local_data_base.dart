import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/home/data/models/category_model.dart';
import 'package:otexapptest/features/home/data/models/product_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDataSource {
  static Database? db;
  // singleton pattern
  static Future<Database> get instance async {
    if (db != null) {
      return db!;
    }
    final path = join(await getDatabasesPath(), kAppDataBase);
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE $kProductsTableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        image TEXT,
        price REAL,
        numberOfSales REAL,
        categoryID INTEGER,
        FOREIGN KEY(categoryID) REFERENCES $kCategoriesTableName(id)
        )
''');
        await db.execute('''
    CREATE TABLE $kCategoriesTableName(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      image TEXT
    )
  ''');
        await db.execute('PRAGMA foreign_keys = ON');
      },
    );
    return db!;
  }

  //////Store clothes/////
  static Future<void> storeProducts(List<ProductModel> productsList) async {
    final db = await instance;
    final count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $kProductsTableName'),
    );
    if (count == 0) {
      for (var item in productsList) {
        await db.insert(
          kProductsTableName,
          item.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    }
  }

  ///////////////store categories////
  static Future<void> storeCategories(
    List<CategoryModel> categoriesList,
  ) async {
    final db = await instance;
    final count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $kCategoriesTableName'),
    );

    if (count == 0) {
      for (var item in categoriesList) {
        await db.insert(
          kCategoriesTableName,
          item.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    }
  }
}
