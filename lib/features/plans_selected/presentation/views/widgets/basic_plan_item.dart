import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_container.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_option.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plan_header.dart';

class BasicPlanItem extends StatefulWidget {
  const BasicPlanItem({super.key});

  @override
  State<BasicPlanItem> createState() => _BasicPlanItemState();
}

class _BasicPlanItemState extends State<BasicPlanItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return CustomPlanContainer(
      child: Column(
        spacing: 12,
        children: [
          PlanHeader(title: 'اساسية'),
          CustomPlanOption(
            title: 'صلاحية الاعلان 30 يوم',
            icon: Assets.acuteIcon,
          ),
        ],
      ),
    );
  }
}
