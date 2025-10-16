import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';

class PlansViewAppBar extends StatelessWidget {
  const PlansViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              spacing: 12,
              children: [
                Text('أختر الباقات اللى تناسبك', style: AppTextStyles.medium24),
                SvgPicture.asset(Assets.chevronRightIcon),
              ],
            ),
          ],
        ),
        Text(
          'أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك',
          style: AppTextStyles.regular14,
        ),
      ],
    );
  }
}
