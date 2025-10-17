import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_container.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_option.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plan_offer_badge.dart';

class SuperPlanItem extends StatelessWidget {
  const SuperPlanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [
        CustomPlanContainer(
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
                        "سوبر",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(Assets.numberOfViews24Icon),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    spacing: 8,
                    children: [
                      CustomPlanOption(
                        title: 'صلاحية الاعلان 30 يوم',
                        icon: Assets.acuteIcon,
                      ),
                      CustomPlanOption(
                        title: 'رفع لأعلى القائمة كل 3 أيام',
                        icon: Assets.rocketIcon,
                      ),
                      CustomPlanOption(
                        title: 'تثبيت فى مقاول صحى',
                        icon: Assets.keepIcon,
                        subtitle: 'خلال ال48 ساعة القادمة ',
                      ),
                      CustomPlanOption(
                        title: 'ظهور فى كل محافظات مصر',
                        icon: Assets.globeIcon,
                      ),
                      CustomPlanOption(
                        title: 'اعلان مميز',
                        icon: Assets.workSpacePremiumIcon,
                      ),
                      CustomPlanOption(
                        title: 'تثبيت فى مقاول صحى فى الجهراء',
                        icon: Assets.keepIcon,
                      ),
                      CustomPlanOption(
                        title: 'تثبيت فى مقاول صحى',
                        icon: Assets.keepIcon,
                        subtitle: 'خلال ال48 ساعة القادمة ',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -20,
          right: 0,
          child: PlanOfferBadge(title: 'اعلى مشاهدات'),
        ),
      ],
    );
  }
}
