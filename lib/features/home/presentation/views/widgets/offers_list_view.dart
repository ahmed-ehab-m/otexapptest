import 'package:flutter/material.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/offer_list_view_item.dart';

class OffersListView extends StatefulWidget {
  const OffersListView({super.key});

  @override
  State<OffersListView> createState() => _OffersListViewState();
}

class _OffersListViewState extends State<OffersListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> offersList = ['كل العروض', 'ملابس', 'اكسسوارات', 'الكترونيات'];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.separated(
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: offersList.length,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: OfferListViewItem(
                isSelected: selectedIndex == index ? true : false,
                index: index,
                offersList: offersList,
              ),
            );
          },
        ),
      ),
    );
  }
}
