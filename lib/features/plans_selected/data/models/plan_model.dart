import 'dart:convert';

import 'package:otexapptest/features/plans_selected/data/models/plan_option_model.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';

class PlanModel extends PlanEntity {
  final int id;

  PlanModel({
    required this.id,
    required super.title,
    required super.price,
    super.badge,
    super.image,
    required List<PlanOptionModel> super.planOption,
  });

  factory PlanModel.fromJson(Map<String, dynamic> json) => PlanModel(
    id: json['id'],
    badge: json['badge'] ?? '',
    image: json['image'] ?? '',
    title: json['title'],
    price: json['price'],
    planOption: json['planOption'] is String
        ? (jsonDecode(json['planOption']) as List<dynamic>)
              .map((e) => PlanOptionModel.fromJson(e))
              .toList()
        : (json['planOption'] as List<dynamic>)
              .map((e) => PlanOptionModel.fromJson(e))
              .toList(),
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'image': image,
      'badge': badge,
      'planOption': planOption.map((e) {
        if (e is PlanOptionModel) return e.toJson();
        return {'title': e.title, 'icon': e.icon, 'subtitle': e.subtitle};
      }).toList(),
    };
  }

  PlanEntity toEntity() => PlanEntity(
    badge: badge,
    image: image,
    title: title,
    price: price,
    planOption: planOption,
  );
}
