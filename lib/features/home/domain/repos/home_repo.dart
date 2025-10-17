import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/domain/entities/clothes_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ClothesEntity>>> fetchClothes();
}
