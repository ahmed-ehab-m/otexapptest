import 'package:flutter/material.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/offer_list_view_item.dart';

class OffersListView extends StatelessWidget {
  const OffersListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> offersList = ['كل العروض', 'ملابس', 'اكسسوارات', 'الكترونيات'];

    return SizedBox(
      height: 41,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: offersList.length,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemBuilder: (context, index) {
            return OfferListViewItem(index: index, offersList: offersList);
          },
        ),
      ),
    );
  }
}
