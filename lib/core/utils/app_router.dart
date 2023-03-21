import 'package:book/Features/Splash/presentation/views/splash_view.dart';
import 'package:book/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', //نقطه البدايه
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
