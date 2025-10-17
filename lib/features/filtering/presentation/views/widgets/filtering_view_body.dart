import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/filtering_view_app_bar.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/location_widget.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/real_state_widget.dart';

class FilteringViewBody extends StatelessWidget {
  const FilteringViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FilteringViewAppBar(),
          SizedBox(height: 32),
          Text(
            'الفئة',
            style: AppTextStyles.medium16.copyWith(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SizedBox(height: 12),
          RealStateWidget(),
          SizedBox(height: 20),
          Divider(color: Colors.black.withOpacity(0.1)),
          SizedBox(height: 20),
          LocationWidget(),
          SizedBox(height: 20),
          Divider(color: Colors.black.withOpacity(0.1)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
