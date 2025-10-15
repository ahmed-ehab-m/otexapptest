import 'package:flutter/cupertino.dart';

double getResponsiveWidth(BuildContext context, double width) {
  // Assuming a base width of 375.0 (common width for mobile design)
  final screenWidth = MediaQuery.of(context).size.width;
  return (width / 360) * screenWidth;
}

////////////////////////////////////
double getResponsiveHeight(BuildContext context, double height) {
  // Assuming a base width of 375.0 (common width for mobile design)
  final screenHeight = MediaQuery.of(context).size.height;
  return screenHeight * height / 1940;
}
