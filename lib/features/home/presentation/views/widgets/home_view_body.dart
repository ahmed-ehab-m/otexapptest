import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/free_shipping_widget.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/items_grid_view.dart';

import 'offers_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Column(
              children: [
                const HomeViewAppBar(),
                SizedBox(height: 12.h),
                const OffersListView(),
                SizedBox(height: 33.h),
                const CategoryListView(),
                SizedBox(height: 24.h),
                const FreeShippingWidget(),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          sliver: SliverToBoxAdapter(child: ItemsGridView()),
        ),
      ],
    );
  }
}
