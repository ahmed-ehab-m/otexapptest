import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otexapptest/core/helper_functions/get_reponsive_width.dart';

class CutomBottomNavigationBarItem extends StatefulWidget {
  const CutomBottomNavigationBarItem({
    super.key,
    required this.isSelected,
    required this.index,
    required this.title,
    required this.icon,
    required this.iconColor,
  });

  final int index;
  final String title;
  final String icon;
  final bool isSelected;
  final Color iconColor;

  @override
  State<CutomBottomNavigationBarItem> createState() =>
      _CutomBottomNavigationBarItemState();
}

class _CutomBottomNavigationBarItemState
    extends State<CutomBottomNavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    double iconSize = getResponsiveWidth(context, 24);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // color: Colors.red,
        border: Border(
          bottom: BorderSide(
            color: widget.isSelected ? Colors.black : Colors.white,
            width: 2,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            height: iconSize,
            width: iconSize,
            widget.icon,
            color: widget.iconColor,
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: widget.iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
