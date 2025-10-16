import 'package:flutter/cupertino.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plan_item.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plans_view_app_bar.dart';

class PlansViewBody extends StatelessWidget {
  const PlansViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          PlansViewAppBar(),
          const SizedBox(height: 20),
          BasicPlanItem(),
          // PlansListView(),
        ],
      ),
    );
  }
}
