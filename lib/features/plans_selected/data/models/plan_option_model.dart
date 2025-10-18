import 'package:otexapptest/features/plans_selected/domain/entities/plan_option_entity.dart';

class PlanOptionModel extends PlanOptionEntity {
  PlanOptionModel({required super.title, required super.icon, super.subtitle});

  factory PlanOptionModel.fromJson(Map<String, dynamic> json) {
    return PlanOptionModel(
      title: json['title'],
      icon: json['icon'],
      subtitle: json['subtitle'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'icon': icon, 'subtitle': subtitle};
  }

  PlanOptionEntity toEntity() =>
      PlanOptionEntity(title: title, icon: icon, subtitle: subtitle);
}
