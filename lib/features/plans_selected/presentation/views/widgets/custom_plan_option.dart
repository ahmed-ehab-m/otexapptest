import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class CustomPlanOption extends StatelessWidget {
  const CustomPlanOption({
    super.key,
    required this.title,
    required this.icon,
    this.subtitle = '',
  });
  final String title;
  final String icon;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              textDirection: TextDirection.rtl,
              style: AppTextStyles.medium14,
            ),
            subtitle.isEmpty
                ? const SizedBox.shrink()
                : Text(
                    "($subtitle)",
                    textDirection: TextDirection.rtl,
                    style: AppTextStyles.medium14.copyWith(
                      color: AppColors.secondaryColor,
                    ),
                  ),
          ],
        ),
        const SizedBox(width: 7),
        SvgPicture.asset(icon),
      ],
    );
  }
}
