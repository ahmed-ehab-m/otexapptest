import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/custom_option_item.dart';

class SelectableOptionWidget extends StatefulWidget {
  const SelectableOptionWidget({
    super.key,
    required this.selectedOptions,
    required this.title,
  });
  final String title;
  final List<String> selectedOptions;

  @override
  State<SelectableOptionWidget> createState() => _SelectableOptionWidgetState();
}

class _SelectableOptionWidgetState extends State<SelectableOptionWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,

      children: [
        Text(
          widget.title,
          style: AppTextStyles.medium16.copyWith(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 12),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              for (var i = 0; i < widget.selectedOptions.length; i++)
                InkWell(
                  onTap: () {
                    setState(() {
                      currentIndex = i;
                    });
                  },
                  child: CustomOptionItem(
                    type: widget.selectedOptions[i],
                    isSelected: i == currentIndex ? true : false,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
