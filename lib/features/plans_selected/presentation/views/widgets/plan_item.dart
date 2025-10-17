import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_container.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_option.dart';

class BasicPlanItem extends StatelessWidget {
  const BasicPlanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPlanContainer(
      child: Column(
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
                ],
              ),
            ],
          ),
          Divider(),
          CustomPlanOption(
            title: 'صلاحية الاعلان 30 يوم',
            icon: Assets.acuteIcon,
          ),
        ],
      ),
    );
  }
}
