import 'package:flutter/material.dart';
import 'package:otexapptest/features/filtering/presentation/views/widgets/filtering_view_body.dart';

class FilteringView extends StatelessWidget {
  const FilteringView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: FilteringViewBody()));
  }
}
