import 'package:otexapptest/core/local_data_source/local_data_base.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/plans_selected/data/models/plan_model.dart';

abstract class PlanLocalDataSource {
  Future<List<PlanModel>> getPlans();
}

class PlanLocalDataSourceImpl implements PlanLocalDataSource {
  @override
  Future<List<PlanModel>> getPlans() async {
    final db = await LocalDataSource.instance;
    // get all plans
    final List<Map<String, dynamic>> planMaps = await db.query(kPlansTableName);
    final List<PlanModel> plans = planMaps
        .map((e) => PlanModel.fromJson(e))
        .toList();
    // List<PlanEntity> planEntities = plans.map((e) => e.toEntity()).toList();
    return plans;

    // get all plan options
  }
}
