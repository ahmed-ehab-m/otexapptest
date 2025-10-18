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
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Column(
              children: [
                HomeViewAppBar(),
                SizedBox(height: 12.h),
                OffersListView(),
                SizedBox(height: 33.h),
                CategoryListView(),
                SizedBox(height: 21.h),
                FreeShippingWidget(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          sliver: SliverToBoxAdapter(child: ItemsGridView()),
        ),
      ],
    );
  }
}
