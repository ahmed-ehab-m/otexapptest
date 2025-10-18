import 'package:otexapptest/features/home/domain/entities/product_entity.dart';

class ProductModel {
  final int id;
  final String name;
  final String image;
  final String price;
  final double numberOfSales;
  final int categoryID;

  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.numberOfSales,
    required this.categoryID,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'numberOfSales': numberOfSales,
      'categoryID': categoryID,
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
      numberOfSales: json['numberOfSales'],
      categoryID: json['categoryID'],
    );
  }
  ProductEntity toEntity() => ProductEntity(
    name: name,
    image: image,
    price: price,
    numberOfSales: numberOfSales,
  );
}
