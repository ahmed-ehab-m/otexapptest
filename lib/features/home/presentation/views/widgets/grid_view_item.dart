import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';
import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/features/home/domain/entities/product_entity.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.clothesEntity});
  final ProductEntity clothesEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: const Color(0xffE2E2E2), width: 1),
      ),
      child: Column(
        children: [
          Image.asset(clothesEntity.image),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Assets.saleIcon),
                    Expanded(
                      child: Text(
                        clothesEntity.name,
                        style: AppTextStyles.bold16,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 11.5),

                Row(
                  children: [
                    SvgPicture.asset(Assets.favoriteIcon),
                    Expanded(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,

                        textDirection: TextDirection.rtl,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: ' ${clothesEntity.price}جم/',
                              style: AppTextStyles.medium14.copyWith(
                                color: const Color(0xffFF4144),
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
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تم بيع ${clothesEntity.numberOfSales}k+',
                      style: AppTextStyles.regular10,
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(width: 4),

                    SvgPicture.asset(Assets.localfireDepartmentIcon),
                  ],
                ),
                const SizedBox(height: 27),
                Row(
                  children: [
                    Image.asset(
                      Assets.talaatMostafaIcon,
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 12),
                    SvgPicture.asset(Assets.shoppingCartIcon),
                    const Spacer(),
                    SvgPicture.asset(Assets.companyBadgeIcon),
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
