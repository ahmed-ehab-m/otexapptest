import 'package:flutter/material.dart';
import 'package:otexapptest/core/utils/app_router.dart';

void main() {
  runApp(const OtexTestApp());
}

class OtexTestApp extends StatelessWidget {
  const OtexTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Tajawal', primarySwatch: Colors.blue),
    );
  }
}
