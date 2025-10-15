import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffE2E2E2), width: 1),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/Picture.png'),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/Vector.svg'),
                    Expanded(
                      child: Text(
                        'جاكيت من الصوف مناسب',
                        style: AppTextStyles.bold16,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 11.5),

                Row(
                  children: [
                    SvgPicture.asset('assets/images/favorite.svg'),

                    Expanded(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '32,000,000جم/',
                              style: AppTextStyles.medium14.copyWith(
                                color: Color(0xffFF4144),
                              ),
                            ),
                            TextSpan(
                              text: '60,000,000',

                              style: AppTextStyles.regular12.copyWith(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/images/local_fire_department.svg'),
                    SizedBox(width: 4),
                    Text(
                      'تم بيع 3.3k+',
                      style: AppTextStyles.regular10,
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                SizedBox(height: 27),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/talaatMostafa.png',
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 12),
                    SvgPicture.asset('assets/images/add_shopping_cart.svg'),
                    Spacer(),
                    SvgPicture.asset('assets/images/Company Badge.svg'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
