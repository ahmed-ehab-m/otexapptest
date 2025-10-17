import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/data/data_sources/home_local_data_source.dart';
import 'package:otexapptest/features/home/data/models/clothes_model.dart';
import 'package:otexapptest/features/home/domain/entities/clothes_entity.dart';
import 'package:otexapptest/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepoImpl({required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<ClothesEntity>>> fetchClothes() async {
    try {
      List<ClothesModel> clothesModels = await homeLocalDataSource
          .fetchClothes();
      final List<ClothesEntity> clothesEntities = clothesModels
          .map((e) => e.toEntity())
          .toList();
      return Right(clothesEntities);
    } catch (e) {
      return Left(
        LocalDataFailure(
          message: "Error in fetching clothes from local data source: $e",
        ),
      );
    }
  }
}
