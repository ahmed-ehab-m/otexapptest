import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/data/data_sources/home_local_data_source.dart';
import 'package:otexapptest/features/home/data/models/category_model.dart';
import 'package:otexapptest/features/home/data/models/product_model.dart';
import 'package:otexapptest/features/home/domain/entities/category_entity.dart';
import 'package:otexapptest/features/home/domain/entities/product_entity.dart';
import 'package:otexapptest/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepoImpl({required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<ProductEntity>>> fetchProducts() async {
    try {
      final List<ProductModel> clothesModels = await homeLocalDataSource
          .fetchProducts();
      final List<ProductEntity> clothesEntities = clothesModels
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

  ////////////////////////////////////
  @override
  Future<Either<Failure, List<CategoryEntity>>> fetchCategories() async {
    try {
      List<CategoryModel> categoriesModels = await homeLocalDataSource
          .fetchCategories();
      final List<CategoryEntity> categoriesEntities = categoriesModels
          .map((e) => e.toEntity())
          .toList();
      return Right(categoriesEntities);
    } catch (e) {
      return Left(
        LocalDataFailure(
          message: "Error in fetching clothes from local data source: $e",
        ),
      );
    }
  }
}
