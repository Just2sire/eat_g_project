import 'package:eat_g/core/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        // useRoute("home", const HomeScreen(),),
      ],
    ),
  ],
);

GoRoute useRoute(String path, Widget screen) {
  return GoRoute(
    path: path,
    builder: (BuildContext context, GoRouterState state) {
      return screen;
    },
  );
}
