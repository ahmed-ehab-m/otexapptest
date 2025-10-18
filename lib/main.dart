import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:otexapptest/core/helper_functions/setup_service_locator.dart';
import 'package:otexapptest/core/local_data_source/local_data_base.dart';
import 'package:otexapptest/core/utils/app_router.dart';
import 'package:otexapptest/core/utils/static_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalDataSource.storeProducts(productsStaticData);
  await LocalDataSource.storeCategories(categoryStaticData);
  await LocalDataSource.storePlans(planStaticData);

  setupServiceLocator();
  runApp(
    const ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(360, 980),
      child: OtexTestApp(),
    ),
  );
}

class OtexTestApp extends StatelessWidget {
  const OtexTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: 'Tajawal',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      ),
    );
  }
}
