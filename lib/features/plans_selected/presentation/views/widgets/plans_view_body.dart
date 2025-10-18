import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/core/widgets/custom_button.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';
import 'package:otexapptest/features/plans_selected/presentation/cubits/get_plans_cubit/get_plans_cubit.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plans_view_app_bar.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/custom_plan_item.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/special_plan_widget.dart';

class PlansViewBody extends StatelessWidget {
  const PlansViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: BlocBuilder<GetPlansCubit, GetPlansState>(
        builder: (context, state) {
          List<PlanEntity> plans = [];
          if (state is GetPlansLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is GetPlansErrorState) {
            return Center(child: Text(state.message));
          }
          if (state is GetPlansSuccessState) {
            plans = state.plansList;
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                PlansViewAppBar(),
                const SizedBox(height: 20),
                for (var plan in plans) CustomPlanItem(plan: plan),

                const SizedBox(height: 24),
                SpecialPlanWidget(),
                const SizedBox(height: 24),
                Divider(color: Colors.black.withOpacity(0.1)),
                CustomButton(title: 'التالى', leadingIcon: true),
                const SizedBox(height: 12),
              ],
            ),
          );
        },
      ),
    );
  }
}
