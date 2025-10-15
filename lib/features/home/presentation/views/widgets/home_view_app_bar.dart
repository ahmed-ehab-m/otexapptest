import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
