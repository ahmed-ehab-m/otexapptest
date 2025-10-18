import 'package:otexapptest/core/local_data_source/local_data_base.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/home/data/models/category_model.dart';
import 'package:otexapptest/features/home/data/models/product_model.dart';
import 'package:otexapptest/features/home/domain/entities/category_entity.dart';

abstract class HomeLocalDataSource {
  Future<List<ProductModel>> fetchProducts();
  Future<List<CategoryModel>> fetchCategories();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  // HomeLocalDataSourceImpl();
  @override
  Future<List<ProductModel>> fetchProducts() async {
    final db = await LocalDataSource.instance;
    final List<Map<String, dynamic>> maps = await db.query(kProductsTableName);
    return maps.map((e) => ProductModel.fromJson(e)).toList();
  }

  //////////////////////////////
  Future<List<CategoryModel>> fetchCategories() async {
    final db = await LocalDataSource.instance;
    final List<Map<String, dynamic>> maps = await db.query(
      kCategoriesTableName,
    );
    return maps.map((e) => CategoryModel.fromJson(e)).toList();
  }
}
