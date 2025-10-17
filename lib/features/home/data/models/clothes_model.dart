import 'package:otexapptest/features/home/domain/entities/clothes_entity.dart';

class ClothesModel {
  final int id;
  final String name;
  final String image;
  final double price;
  final double numberOfSales;

  ClothesModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.numberOfSales,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'numberOfSales': numberOfSales,
    };
  }

  factory ClothesModel.fromJson(Map<String, dynamic> json) {
    return ClothesModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
      numberOfSales: json['numberOfSales'],
    );
  }
  ClothesEntity toEntity() => ClothesEntity(
    name: name,
    image: image,
    price: price,
    numberOfSales: numberOfSales,
  );
}
