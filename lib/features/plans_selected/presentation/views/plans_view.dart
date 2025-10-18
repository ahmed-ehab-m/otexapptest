import 'package:flutter/material.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/widgets/plans_view_body.dart';

class PLansView extends StatelessWidget {
  const PLansView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: PlansViewBody()));
  }
}
