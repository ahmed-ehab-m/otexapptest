import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/constants.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/filtering_view_app_bar.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/location_widget.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/label_double_field.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/selectable_option_widget.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/real_state_widget.dart';
import 'package:otexapptest/core/widgets/custom_button.dart';

class FilteringViewBody extends StatelessWidget {
  const FilteringViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> realStateTypes = [
      'الكل',
      'توين هاوس',
      'فيلا مفصلة',
      'تاون هاوس',
    ];
    List<String> numberOfRooms = ['4 غرف', '5 غرف+', 'الكل', '3 غرف'];
    List<String> paymentMethods = ['أى', 'تقسيط', 'كاش'];
    List<String> propertyConditions = ['أى', 'جاهز', 'قيد الأنشاء'];

    return Padding(
      padding: const EdgeInsets.all(kHorizontalPadding),
      child: SingleChildScrollView(
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
            SizedBox(height: 12.h),
            RealStateWidget(),
            SizedBox(height: 20.h),
            Divider(color: Colors.black.withOpacity(0.1)),
            SizedBox(height: 20.h),
            LocationWidget(),
            SizedBox(height: 20.h),
            Divider(color: Colors.black.withOpacity(0.1)),
            SizedBox(height: 20.h),
            LabelDoubleField(title: 'الأقساط الشهرية'),
            SizedBox(height: 20.h),
            SelectableOptionWidget(
              title: 'نوع',
              selectedOptions: realStateTypes,
            ),
            SizedBox(height: 20.h),
            SelectableOptionWidget(
              title: 'عدد الغرف',
              selectedOptions: numberOfRooms,
            ),
            SizedBox(height: 20.h),
            LabelDoubleField(
              title: 'السعر',
              firstLabel: 'أقل سعر',
              secondLabel: 'اقصى سعر',
            ),

            SizedBox(height: 20.h),
            SelectableOptionWidget(
              title: 'طريقة الدفع',
              selectedOptions: paymentMethods,
            ),
            SizedBox(height: 20.h),
            SelectableOptionWidget(
              title: 'حالة العقار',
              selectedOptions: propertyConditions,
            ),
            SizedBox(height: 40.h),
            CustomButton(title: 'شاهد 10,000+ نتائج'),
          ],
        ),
      ),
    );
  }
}
