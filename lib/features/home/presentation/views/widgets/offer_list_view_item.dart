import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class OfferListViewItem extends StatelessWidget {
  const OfferListViewItem({
    super.key,
    required this.offersList,
    required this.index,
    required this.isSelected,
  });

  final List<String> offersList;
  final int index;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey.withOpacity(0.1)),
        color: isSelected
            ? AppColors.secondaryLightColor.withOpacity(0.05)
            : Colors.transparent,
      ),

      child: Text(
        offersList[index],
        style: AppTextStyles.medium14.copyWith(
          color: isSelected ? AppColors.secondaryLightColor : Colors.black,
        ),
      ),
    );
  }
}
