import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';

class RealStateWidget extends StatelessWidget {
  const RealStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Text(
            'تغيير',
            style: AppTextStyles.bold14.copyWith(
              color: AppColors.primaryLightColor,
            ),
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SvgPicture.asset(Assets.realStateIcon),
              ),
              Column(
                children: [
                  Text('عقارات', style: AppTextStyles.medium14),
                  Text(
                    'فلل للبيع',
                    style: AppTextStyles.regular12.copyWith(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
