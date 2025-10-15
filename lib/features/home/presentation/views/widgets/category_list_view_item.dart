import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            // color: Colors.grey,
            child: Image.asset(imageList[index], width: 73, height: 56),
          ),
          SizedBox(height: 8),
          Text(offersList[index], style: AppTextStyles.medium14),
        ],
      ),
    );
  }
}
