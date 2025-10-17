import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/domain/entities/clothes_entity.dart';
import 'package:otexapptest/features/home/domain/repos/home_repo.dart';

class FetchClothesUseCase {
  final HomeRepo homeRepo;

  FetchClothesUseCase({required this.homeRepo});

  Future<Either<Failure, ClothesEntity>> call() => homeRepo.fetchClothes();
}
