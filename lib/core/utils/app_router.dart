import 'package:go_router/go_router.dart';
import 'package:otexapptest/features/home/presentation/views/main_view.dart';

class AppRouter {
  static const String kMainView = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(path: kMainView, builder: (context, state) => const MainView()),
    ],
  );
}
