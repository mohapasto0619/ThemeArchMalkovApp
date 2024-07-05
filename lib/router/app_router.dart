import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malkovapp/modules/home/view.dart';
import 'package:malkovapp/router/app_routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter appRouter(AppRouterRef ref) {
  final router = GoRouter(
    initialLocation: AppRoute.home.path,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );

  ref.onDispose(router.dispose);

  return router;
}
