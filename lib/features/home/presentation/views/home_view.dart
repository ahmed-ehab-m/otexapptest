import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(CupertinoIcons.arrow_left),
                  color: Colors.grey,
                  onPressed: () {},
                ),
                Text(
                  'الكل',
                  style: AppTextStyles.bold16.copyWith(color: Colors.grey),
                ),
              ],
            ),
            Text('استكشف العروض', style: AppTextStyles.medium16),
          ],
        ),
      ),
      body: HomeViewBody(),
    );
  }
}
