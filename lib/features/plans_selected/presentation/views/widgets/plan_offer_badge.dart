import 'package:flutter/cupertino.dart';
import 'package:otexapptest/core/utils/app_colors.dart';
import 'package:otexapptest/core/utils/app_text_styles.dart';

class PlanOfferBadge extends StatelessWidget {
  const PlanOfferBadge({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LeftDiagonalClipper(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 8, 4, 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(4),
            // bottomLeft: Radius.elliptical(5, 5),
          ),
          color: Color(0xffFFDBDB),
        ),
        child: Text(
          title,
          style: AppTextStyles.medium12.copyWith(
            color: AppColors.secondaryColor,
          ),
        ),
      ),
    );
  }
}

class LeftDiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.lineTo(15, size.height / 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
