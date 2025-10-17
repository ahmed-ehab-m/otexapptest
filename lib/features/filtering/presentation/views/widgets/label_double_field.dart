import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/custom_text_field.dart';

class LabelDoubleField extends StatelessWidget {
  const LabelDoubleField({
    super.key,
    required this.title,
    this.firstLabel = '',
    this.secondLabel = '',
  });
  final String title;
  final String firstLabel;
  final String secondLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 12,
      children: [
        Text(
          title,
          style: AppTextStyles.medium16.copyWith(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        Row(
          children: [
            CustomTextField(label: secondLabel),
            SizedBox(width: 10),
            CustomTextField(label: firstLabel),
          ],
        ),
      ],
    );
  }
}
