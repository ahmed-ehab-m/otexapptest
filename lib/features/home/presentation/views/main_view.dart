import 'package:flutter/material.dart';

import 'package:otexapptest/core/utils/assets.dart';
import 'package:otexapptest/core/utils/functions/get_reponsive_width.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/custom_bottom_navigation_bar_item.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 4;
  List<String> titles = [
    "حسابى",
    "اعلاناتى",
    "اضف اعلان",
    "محادثة",
    "الرئيسية",
  ];
  List<String> icons = [
    Assets.accountCircleIcon,
    Assets.datasetIcon,
    Assets.addBoxIcon,
    Assets.chatIcon,
    Assets.homeIcon,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: IntrinsicHeight(
        child: SafeArea(
          child: Container(
            // alignment: Alignment.bottomCenter,
            padding: EdgeInsets.fromLTRB(
              getResponsiveWidth(context, 11.5),
              12,
              getResponsiveWidth(context, 11.5),

              0,
            ),
            decoration: BoxDecoration(
              // color: Colors.red,
              border: BoxBorder.fromLTRB(
                top: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                5,
                (index) => InkWell(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: CutomBottomNavigationBarItem(
                    index: currentIndex,
                    title: titles[index],
                    icon: icons[index],
                    isSelected: index == 2
                        ? false
                        : currentIndex == index
                        ? true
                        : false,
                    iconColor: index == 2
                        ? Color(0xff0062E2)
                        : currentIndex == index
                        ? Colors.black
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
