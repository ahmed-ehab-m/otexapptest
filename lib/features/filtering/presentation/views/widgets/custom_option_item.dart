import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class CustomOptionItem extends StatelessWidget {
  const CustomOptionItem({
    super.key,
    required this.type,
    required this.isSelected,
  });
  final String type;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primaryColor.withOpacity(0.05)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: isSelected
              ? AppColors.primaryColor
              : Colors.black.withOpacity(0.1),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 11.5, vertical: 8),
      child: Text(
        type,
        style: AppTextStyles.regular14.copyWith(
          color: isSelected
              ? AppColors.primaryColor
              : Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
