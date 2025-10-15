import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/free_shipping_widget.dart';
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
                OffersListView(),
                const SizedBox(height: 33),
                CategoryListView(),
                const SizedBox(height: 21),
                FreeShippingWidget(),
                const SizedBox(height: 20),
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
    // return Container(
    //   padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
    //   child: Column(
    //     children: [
    //       OffersListView(),
    //       const SizedBox(height: 33),
    //       CategoryListView(),
    //       const SizedBox(height: 21),
    //       FreeShippingWidget(),
    //       const SizedBox(height: 20),
    //       ItemsGridView(),
    //     ],
    //   ),
    // );
  }
}
