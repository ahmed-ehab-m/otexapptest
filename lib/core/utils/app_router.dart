import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otexapptest/core/helper_functions/setup_service_locator.dart';
import 'package:otexapptest/features/filtering/presentation/views/filtering_view.dart';
import 'package:otexapptest/features/home/domain/use_cases/fetch_categories_use_case.dart';
import 'package:otexapptest/features/home/domain/use_cases/fetch_products_use_case.dart';
import 'package:otexapptest/features/home/presentation/cubits/fetch_categories_cubit/fetch_categories_cubit_cubit.dart';
import 'package:otexapptest/features/home/presentation/cubits/fetch_products_cubit/fetch_products_cubit.dart';
import 'package:otexapptest/features/home/presentation/views/home_view.dart';
import 'package:otexapptest/features/home/presentation/views/main_view.dart';
import 'package:otexapptest/features/plans_selected/domain/use_cases/get_plans_use_case.dart';
import 'package:otexapptest/features/plans_selected/presentation/cubits/get_plans_cubit/get_plans_cubit.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/plans_view.dart';

class AppRouter {
  static const String kMainView = '/';
  static const String kHomeView = '/home_view';
  static const String kPlansView = '/plans_view';
  static const String kFilteringView = '/filtering_view';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kMainView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  FetchCategoriesCubit(getIt<FetchCategoriesUseCase>())
                    ..fetchCategories(),
            ),
            BlocProvider(
              create: (context) =>
                  FetchProductsCubit(getIt<FetchProductsUseCase>())
                    ..fetchProducts(),
            ),
            BlocProvider(
              create: (context) =>
                  GetPlansCubit(getIt<GetPlansUseCase>())..getPlans(),
            ),
          ],
          child: const MainView(),
        ),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kPlansView, builder: (context, state) => const PLansView()),
      GoRoute(
        path: kFilteringView,
        builder: (context, state) => const FilteringView(),
      ),
    ],
  );
}
