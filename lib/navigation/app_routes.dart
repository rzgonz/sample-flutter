import 'package:go_router/go_router.dart';
import 'package:news/modules/Intro/presentation/main/IntroScreen.dart';
import 'package:news/modules/home/home_args.dart';
import 'package:news/modules/home/home_screen.dart';

class AppRoutes {
  static GoRouter route = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: "intro",
        builder: (context, state) {
          return const IntroScreen();
        },
      ),
      GoRoute(
        path: "/home",
        name: "home",
        builder: (context, state) {
          return HomeScreen(homeArgs: state.extra as HomeArgs);
        },
      )
    ],
  );
}
