import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/home/data/models/category_model.dart';
import 'package:otexapptest/features/home/data/models/product_model.dart';
import 'package:otexapptest/features/plans_selected/data/models/plan_model.dart';
import 'package:otexapptest/features/plans_selected/data/models/plan_option_model.dart';

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
////////////////////////
final List<PlanModel> planStaticData = [
  PlanModel(
    id: 1,
    title: 'اساسية',
    price: '3000',
    planOption: [
      PlanOptionModel(title: 'صلاحية الأعلان 30 يوم', icon: Assets.acuteIcon),
    ],
  ),
  PlanModel(
    id: 2,
    title: 'أكسترا',
    price: '3000',
    image: Assets.numberOfViews7Icon,
    planOption: [
      PlanOptionModel(title: 'صلاحية الأعلان 30 يوم', icon: Assets.acuteIcon),
      PlanOptionModel(
        title: 'رفع لأعلى القائمة كل 3 أيام',
        icon: Assets.rocketIcon,
      ),
      PlanOptionModel(
        title: 'تثبيت فى مقاول صحى',
        icon: Assets.keepIcon,
        subtitle: 'خلال ال48 ساعة القادمة ',
      ),
    ],
  ),
  PlanModel(
    id: 3,
    title: 'بلس',
    price: '3000',
    badge: 'افضل قيمة مقابل سعر',
    image: Assets.numberOfViews18Icon,
    planOption: [
      PlanOptionModel(title: 'صلاحية الأعلان 30 يوم', icon: Assets.acuteIcon),
      PlanOptionModel(
        title: 'رفع لأعلى القائمة كل 3 أيام',
        icon: Assets.rocketIcon,
      ),
      PlanOptionModel(
        title: 'تثبيت فى مقاول صحى',
        icon: Assets.keepIcon,
        subtitle: 'خلال ال48 ساعة القادمة ',
      ),
      PlanOptionModel(title: 'ظهور فى كل محافظات مصر', icon: Assets.globeIcon),
      PlanOptionModel(title: 'أعلان مميز', icon: Assets.workSpacePremiumIcon),
      PlanOptionModel(
        title: ' تثبيت فى مقاول صحى الجهراء',
        icon: Assets.keepIcon,
      ),
      PlanOptionModel(
        title: 'تثبيت فى مقاول صحى',
        icon: Assets.keepIcon,
        subtitle: 'خلال ال48 ساعة القادمة ',
      ),
    ],
  ),
  PlanModel(
    id: 3,
    title: 'سوبر',
    price: '3000',
    badge: 'اعلى مشاهدات',
    image: Assets.numberOfViews24Icon,
    planOption: [
      PlanOptionModel(title: 'صلاحية الأعلان 30 يوم', icon: Assets.acuteIcon),
      PlanOptionModel(
        title: 'رفع لأعلى القائمة كل 3 أيام',
        icon: Assets.rocketIcon,
      ),
      PlanOptionModel(
        title: 'تثبيت فى مقاول صحى',
        icon: Assets.keepIcon,
        subtitle: 'خلال ال48 ساعة القادمة ',
      ),
      PlanOptionModel(title: 'ظهور فى كل محافظات مصر', icon: Assets.globeIcon),
      PlanOptionModel(title: 'أعلان مميز', icon: Assets.workSpacePremiumIcon),
      PlanOptionModel(
        title: ' تثبيت فى مقاول صحى الجهراء',
        icon: Assets.keepIcon,
      ),
      PlanOptionModel(
        title: 'تثبيت فى مقاول صحى',
        icon: Assets.keepIcon,
        subtitle: 'خلال ال48 ساعة القادمة ',
      ),
    ],
  ),
];
