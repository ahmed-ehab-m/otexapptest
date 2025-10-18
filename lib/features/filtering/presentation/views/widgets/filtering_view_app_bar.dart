import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_colors.dart';

import 'package:otexapptest/core/utils/app_text_styles.dart';

class FilteringViewAppBar extends StatelessWidget {
  const FilteringViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'رجوع للأفتراضى',
          style: AppTextStyles.bold16.copyWith(color: AppColors.primaryColor),
        ),
        const Spacer(),
        Text('فلترة', style: AppTextStyles.medium24),
        const SizedBox(width: 12),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.clear, size: 20),
        ),
      ],
    );
  }
}
