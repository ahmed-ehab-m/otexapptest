import 'package:flutter/cupertino.dart';
import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/category_list_view_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    print('category list view height');
    print(MediaQuery.of(context).size.height * 0.11);
    List<String> offersList = [
      'منتجات تجميل',
      'موبايلات',
      'ساعات',
      'موضة رجالى',
    ].reversed.toList();
    List<String> imagesList = Assets.categoryImages;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.11,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: offersList.length,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemBuilder: (context, index) {
            return CategoryListViewItem(
              index: index,
              offersList: offersList,
              imageList: imagesList,
            );
          },
        ),
      ),
    );
  }
}
