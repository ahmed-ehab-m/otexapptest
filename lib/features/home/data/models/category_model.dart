import 'package:otexapptest/features/home/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  final int id;

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

  CategoryModel({required super.name, required super.image, required this.id});
  CategoryEntity toEntity() => CategoryEntity(name: name, image: image);
}
