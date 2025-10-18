import 'dart:math';

import 'package:otexapptest/features/plans_selected/data/models/plan_option_model.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';

class PlanModel extends PlanEntity {
  final int id;

  PlanModel({
    required this.id,
    required String title,
    required String price,
    String? badge,
    String? image,
    required List<PlanOptionModel> planOption,
  }) : super(
         badge: badge,
         image: image,
         title: title,
         price: price,
         planOption: planOption,
       );

  factory PlanModel.fromJson(Map<String, dynamic> json) => PlanModel(
    id: json['id'],
    badge: json['badge'] ?? '',
    image: json['image'] ?? '',
    title: json['title'],
    price: json['price'],
    planOption: (json['planOption'] as List<dynamic>)
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
}
