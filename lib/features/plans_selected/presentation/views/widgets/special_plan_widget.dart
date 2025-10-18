import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class SpecialPlanWidget extends StatelessWidget {
  const SpecialPlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffF7F7F7),
        border: Border.all(color: Colors.black.withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text("باقات مخصصة لك", style: AppTextStyles.medium14),
                ],
              ),
              Text(
                'تواصل معنا لاختيار الباقة المناسبة لك',
                style: AppTextStyles.regular14,
              ),
              Text(
                'فريق المبيعات',
                style: AppTextStyles.bold16.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
