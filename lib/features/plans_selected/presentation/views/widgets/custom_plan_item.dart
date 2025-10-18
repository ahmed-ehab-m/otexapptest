import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_container.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_option.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plan_header.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plan_offer_badge.dart';

class CustomPlanItem extends StatelessWidget {
  const CustomPlanItem({super.key, required this.plan});
  final PlanEntity plan;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomPlanContainer(
          child: Column(
            spacing: 12,
            children: [
              PlanHeader(title: plan.title, price: plan.price),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (plan.image != null) SvgPicture.asset(plan.image!),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    spacing: 8,
                    children: [
                      for (int i = 0; i < plan.planOption.length; i++)
                        CustomPlanOption(
                          title: plan.planOption[i].title,
                          icon: plan.planOption[i].icon,
                          subtitle: plan.planOption[i].subtitle ?? '',
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        plan.badge != null && plan.badge != ''
            ? Positioned(
                top: -20,
                right: 0,
                child: PlanOfferBadge(title: plan.badge!),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
