import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/helper_functions/get_reponsive_width.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({
    super.key,
    required this.offersList,
    required this.index,
    required this.imageList,
  });
  final List<String> offersList;
  final List<String> imageList;

  final int index;
  @override
  Widget build(BuildContext context) {
    print('category list view item height');
    print(MediaQuery.of(context).size.height * 0.07);
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            // color: Colors.grey,
            child: Image.asset(
              imageList[index],
              width: getResponsiveWidth(context, 73),
              height: MediaQuery.of(context).size.height * 0.07,
            ),
          ),
          SizedBox(height: 8),
          Text(offersList[index], style: AppTextStyles.medium14),
        ],
      ),
    );
  }
}
