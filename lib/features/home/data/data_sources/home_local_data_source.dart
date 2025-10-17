import 'package:otexapptest/core/local_data_source/local_data_base.dart';
import 'package:otexapptest/features/home/data/models/clothes_model.dart';

abstract class HomeLocalDataSource {
  Future<List<ClothesModel>> fetchClothes();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  // HomeLocalDataSourceImpl();
  @override
  Future<List<ClothesModel>> fetchClothes() async {
    final db = await LocalDataSource.instance;
    final List<Map<String, dynamic>> maps = await db.query('CLOTHES');
    return maps.map((e) => ClothesModel.fromJson(e)).toList();
  }
}
