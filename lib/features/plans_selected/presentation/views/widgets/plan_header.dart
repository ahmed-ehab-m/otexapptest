import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';

class PlanHeader extends StatefulWidget {
  const PlanHeader({super.key, required this.title, required this.price});
  final String title;
  final String price;
  @override
  State<PlanHeader> createState() => _PlanHeaderState();
}

class _PlanHeaderState extends State<PlanHeader> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${widget.price} ج.م",
              textDirection: TextDirection.rtl,
              style: AppTextStyles.bold16.copyWith(
                color: AppColors.secondaryLightColor,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.secondaryLightColor,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            Row(
              children: [
                Text(
                  widget.title,
                  textDirection: TextDirection.rtl,
                  style: AppTextStyles.bold16.copyWith(
                    color: isSelected
                        ? AppColors.primaryLightColor
                        : Colors.black,
                  ),
                ),
                SizedBox(width: 7),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: SvgPicture.asset(
                    isSelected
                        ? Assets.checkBoxFilledIcon
                        : Assets.checkBoxIcon,
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
