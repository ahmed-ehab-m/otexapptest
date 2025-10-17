import 'package:flutter/cupertino.dart';
import 'package:otexapptest/features/home/presentation/views/home_view.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/plans_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentIndex,
      children: [PLansView(), HomeView(), HomeView(), HomeView(), HomeView()],
    );
  }
}
