import 'package:eat_g/screens/home_screen.dart';
import 'package:eat_g/screens/plat_details_screen.dart';
import 'package:eat_g/screens/result_screen.dart';
import 'package:eat_g/screens/second_home_screen.dart';
import 'package:eat_g/screens/splash_screen.dart';
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
        useRoute("home", const HomeScreen()),
        useRoute("Second_home", const SecondHomeScreen()),
        // useRoute("result", const ResultScreen()),
        // useRoute("details", const PlatDetailsScreen()),
        GoRoute(
          path: "results",
          builder: (BuildContext context, GoRouterState state) {
            return ResultScreen(
              queries: state.extra! as List<String>,
            );
          },
        ),
        GoRoute(
          // name: "details",
          path: "details/:id",
          builder: (BuildContext context, GoRouterState state) {
            final id = state.pathParameters['id']!;
            return PlatDetailsScreen(
              id: int.parse(id),
            );
          },
        )
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
