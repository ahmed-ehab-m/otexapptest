import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/helper_functions/get_reponsive_width.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/features/home/domain/entities/category_entity.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({super.key, required this.categoryEntity});

  final CategoryEntity categoryEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            // color: Colors.grey,
            child: Image.asset(
              categoryEntity.image,
              width: getResponsiveWidth(context, 73),
              height: MediaQuery.of(context).size.height * 0.07,
            ),
          ),
          SizedBox(height: 8),
          Text(categoryEntity.name, style: AppTextStyles.medium14),
        ],
      ),
    );
  }
}
