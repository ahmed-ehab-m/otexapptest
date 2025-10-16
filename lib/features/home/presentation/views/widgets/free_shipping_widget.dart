import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';

class FreeShippingWidget extends StatelessWidget {
  const FreeShippingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text("! لاى عرض تطلبه دلوقتى ", style: AppTextStyles.regular10),
          Row(
            spacing: 8,
            children: [
              Text(
                "شحن مجاني",
                style: AppTextStyles.regular12.copyWith(
                  color: Color(0xff3A813F),
                ),
              ),
              SvgPicture.asset(Assets.checkIcon),
            ],
          ),
        ],
      ),
    );
  }
}
