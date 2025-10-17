import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_button.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/extra_plan_item.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/basic_plan_item.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plans_view_app_bar.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plus_plan_item.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/special_plan_widget.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/super_plan_item.dart';

class PlansViewBody extends StatelessWidget {
  const PlansViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            PlansViewAppBar(),
            const SizedBox(height: 20),
            BasicPlanItem(),
            const SizedBox(height: 24),
            ExtraPlanItem(),
            const SizedBox(height: 24),
            PlusPlanItem(),
            const SizedBox(height: 24),
            SuperPlanItem(),
            const SizedBox(height: 24),
            SpecialPlanWidget(),
            const SizedBox(height: 24),
            Divider(color: Colors.black.withOpacity(0.1)),
            CustomButton(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
