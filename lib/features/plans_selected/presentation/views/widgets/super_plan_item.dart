import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_container.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_option.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plan_header.dart';
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
              PlanHeader(title: 'سوبر'),

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
