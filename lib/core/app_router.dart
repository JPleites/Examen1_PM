import 'package:go_router/go_router.dart';
import 'package:examen1/screens/home_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const HomePage();
        }),
  ],
);
