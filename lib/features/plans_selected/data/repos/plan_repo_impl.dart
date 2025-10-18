import 'package:dartz/dartz.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/plans_selected/data/data_sources/plan_local_data_source.dart';
import 'package:otexapptest/features/plans_selected/data/models/plan_model.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';
import 'package:otexapptest/features/plans_selected/domain/repos/plan_repo.dart';

class PlanRepoImpl extends PlanRepo {
  final PlanLocalDataSource planLocalDataSource;

  PlanRepoImpl({required this.planLocalDataSource});
  @override
  Future<Either<Failure, List<PlanEntity>>> getPlans() async {
    try {
      List<PlanModel> planModels = await planLocalDataSource.getPlans();
      List<PlanEntity> planEntities = planModels
          .map((e) => e.toEntity())
          .toList();
      return Right(planEntities);
    } catch (e) {
      return Left(
        LocalDataFailure(
          message:
              'Error in fetching plans from local data source:' + e.toString(),
        ),
      );
    }
  }
}
