import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/home/data/models/category_model.dart';
import 'package:otexapptest/features/home/data/models/product_model.dart';

final List<ProductModel> productsStaticData = [
  ProductModel(
    id: 1,
    name: 'قميص من القطن',
    image: 'assets/images/Picture (1).png',
    price: '32.000.000',
    numberOfSales: 3.3,
    categoryID: 1,
  ),
  ProductModel(
    id: 2,
    name: 'جاكيت من الصوف مناسب',
    image: 'assets/images/Picture.png',
    price: '32.000.000',

    numberOfSales: 3.3,
    categoryID: 1,
  ),
  ProductModel(
    id: 3,
    name: 'جاكيت من الصوف مناسب',
    image: 'assets/images/Picture.png',
    price: '32.000.000',

    numberOfSales: 3.3,
    categoryID: 1,
  ),
  ProductModel(
    id: 4,
    name: 'حذاء رياضى ',
    image: 'assets/images/Picture (2).png',
    price: '32.000.000',

    numberOfSales: 3.3,
    categoryID: 1,
  ),
];
//////////////////////////////////////
final List<CategoryModel> categoryStaticData = [
  CategoryModel(id: 1, name: 'موضة رجالى', image: Assets.categoryImages[0]),
  CategoryModel(id: 2, name: 'موبايلات', image: Assets.categoryImages[1]),
  CategoryModel(id: 3, name: 'ساعات', image: Assets.categoryImages[2]),
  CategoryModel(id: 4, name: 'منتجات تجميل', image: Assets.categoryImages[3]),
];
