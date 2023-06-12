import 'package:flutter/material.dart';
import 'package:flutter_go_route/details_page.dart';
import 'package:go_router/go_router.dart';

import 'home_page.dart';
import 'inner_details_page.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'Flutter Go Route',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (context, state) {
            var data = state.extra;
            return DetailsPage(data: data is String ? data : "");
          },
        ),
        GoRoute(
          name: "sub_details",
          path: 'sub_details/:page/:sq',
          builder: (context, state) {
            var data = state.extra;
            return SubDetailsPage(data: data is String ? data : "");
          },
        ),
      ],
    ),
  ],
);
