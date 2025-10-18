import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/core/widgets/custom_button.dart';
import 'package:otexapptest/core/widgets/loading_widget.dart';
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
            return const LoadingWidget();
          }
          if (state is GetPlansErrorState) {
            return ErrorWidget(state.message);
          }
          if (state is GetPlansSuccessState) {
            plans = state.plansList;
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                const PlansViewAppBar(),
                SizedBox(height: 20.h),
                for (var plan in plans)
                  Padding(
                    padding: EdgeInsets.only(top: 28.h),
                    child: CustomPlanItem(plan: plan),
                  ),
                SizedBox(height: 24.h),
                const SpecialPlanWidget(),
                SizedBox(height: 40.h),
                Divider(color: Colors.black.withOpacity(0.1)),
                const CustomButton(title: 'التالى', leadingIcon: true),
                SizedBox(height: 12.h),
              ],
            ),
          );
        },
      ),
    );
  }
}
