import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/domain/entities/category_entity.dart';
import 'package:otexapptest/features/home/domain/repos/home_repo.dart';

class FetchCategoriesUseCase {
  final HomeRepo homeRepo;

  FetchCategoriesUseCase({required this.homeRepo});

  Future<Either<Failure, List<CategoryEntity>>> call() =>
      homeRepo.fetchCategories();
}
