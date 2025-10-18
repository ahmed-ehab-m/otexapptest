class PlanOptionEntity {
  final String title;
  final String icon;
  final String? subtitle;

  PlanOptionEntity({this.subtitle, required this.title, required this.icon});

  Map<String, dynamic> toJson() {
    return {'title': title, 'icon': icon, 'subtitle': subtitle};
  }
}
