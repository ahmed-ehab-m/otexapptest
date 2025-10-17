import 'package:go_router/go_router.dart';
import 'package:otexapptest/features/home/presentation/views/main_view.dart';
import 'package:otexapptest/features/plans_selected/presentation/views/plans_view.dart';

class AppRouter {
  static const String kMainView = '/';
  static const String kHomeView = '/home_view';
  static const String kPlansView = '/plans_view';

  static final router = GoRouter(
    routes: [
      GoRoute(path: kMainView, builder: (context, state) => const MainView()),
      GoRoute(path: kHomeView, builder: (context, state) => const MainView()),
      GoRoute(path: kPlansView, builder: (context, state) => const PLansView()),
    ],
  );
}
