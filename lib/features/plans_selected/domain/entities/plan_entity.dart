import 'package:otexapptest/features/plans_selected/domain/entities/plan_option_entity.dart';

class PlanEntity {
  final String title;
  final String price;
  String? image;
  String? badge;
  final List<PlanOptionEntity> planOption;

  PlanEntity({
    this.badge,
    this.image,
    required this.planOption,
    required this.title,
    required this.price,
  });
}
