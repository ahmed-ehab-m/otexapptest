import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Colors;

class CustomPlanContainer extends StatelessWidget {
  const CustomPlanContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.black.withOpacity(0.1)),
        color: Colors.white,
        // color: Colors.black.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
