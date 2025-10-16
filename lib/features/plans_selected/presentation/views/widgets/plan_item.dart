import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_container.dart';

class BasicPlanItem extends StatelessWidget {
  const BasicPlanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPlanContainer(
      childWidget: Column(
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "3,000ج.م",
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
                    "أساسية",
                    textDirection: TextDirection.rtl,
                    style: AppTextStyles.bold16,
                  ),
                  SizedBox(width: 7),
                  SvgPicture.asset(Assets.checkBoxIcon),
                  // Icon(
                  //   // CupertinoIcons.square,
                  //   CupertinoIcons.checkmark_square_fill,
                  //   color: AppColors.primaryLightColor,
                  //   size: 20,
                  // ),
                ],
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "صلاحية الأعلان 30 يوم",
                textDirection: TextDirection.rtl,
                style: AppTextStyles.medium14,
              ),
              SizedBox(width: 7),
              SvgPicture.asset(Assets.acuteIcon),
            ],
          ),
        ],
      ),
    );
  }
}
