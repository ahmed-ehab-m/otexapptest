import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/domain/entities/category_entity.dart';
import 'package:otexapptest/features/home/domain/entities/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductEntity>>> fetchProducts();

  Future<Either<Failure, List<CategoryEntity>>> fetchCategories();
}
