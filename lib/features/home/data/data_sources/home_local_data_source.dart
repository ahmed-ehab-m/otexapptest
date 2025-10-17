import 'package:otexapptest/features/home/domain/entities/clothes_entity.dart';

abstract class HomeLocalDataSource {
  List<ClothesEntity> fetchClothes();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<ClothesEntity> fetchClothes() {}
}
