import 'package:otexapptest/core/local_data_source/local_data_base.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/plans_selected/data/models/plan_model.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';

abstract class PlanLocalDataSource {
  Future<List<PlanModel>> getPlans();
}

class PlanLocalDataSourceImpl implements PlanLocalDataSource {
  @override
  @override
  Future<List<PlanModel>> getPlans() async {
    final db = await LocalDataSource.instance;
    final List<Map<String, dynamic>> maps = await db.query(kPlansTableName);
    return maps.map((e) => PlanModel.fromJson(e)).toList();
  }
}
