import 'package:otexapptest/features/home/domain/entities/category_entity.dart';

class CategoryModel {
  final int id;
  final String name;
  final String image;

  CategoryModel({required this.id, required this.name, required this.image});
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'image': image};
  }

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
  CategoryEntity toEntity() => CategoryEntity(name: name, image: image);
}
