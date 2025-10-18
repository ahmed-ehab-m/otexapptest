import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';

abstract class PlanRepo {
  Future<Either<Failure, List<PlanEntity>>> getPlans();
}
