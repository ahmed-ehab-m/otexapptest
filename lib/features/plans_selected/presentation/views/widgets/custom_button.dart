import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.arrow_left, color: Colors.white),
          SizedBox(width: 4),
          Text(
            'التالى',
            style: AppTextStyles.bold16.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
