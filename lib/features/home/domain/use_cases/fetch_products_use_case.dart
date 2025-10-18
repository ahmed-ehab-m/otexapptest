import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/domain/entities/category_entity.dart';
import 'package:otexapptest/features/home/domain/entities/product_entity.dart';
import 'package:otexapptest/features/home/domain/repos/home_repo.dart';

class FetchProductsUseCase {
  final HomeRepo homeRepo;

  FetchProductsUseCase({required this.homeRepo});

  Future<Either<Failure, List<ProductEntity>>> call() =>
      homeRepo.fetchProducts();
}
