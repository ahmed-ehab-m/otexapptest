import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';
import 'package:otexapptest/features/plans_selected/domain/repos/plan_repo.dart';

class GetPlansUseCase {
  final PlanRepo planRepo;

  GetPlansUseCase({required this.planRepo});

  Future<Either<Failure, List<PlanEntity>>> call() async =>
      await planRepo.getPlans();
}
