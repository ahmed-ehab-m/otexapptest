import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/category_list_view.dart';

import 'offers_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          OffersListView(),
          const SizedBox(height: 30),
          CategoryListView(),
        ],
      ),
    );
  }
}
