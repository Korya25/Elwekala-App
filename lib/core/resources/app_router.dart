import 'package:elwekala/core/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.productDetail,
    routes: [
      GoRoute(path: AppRoutes.login, builder: (context, state) => Scaffold()),
      GoRoute(
        path: AppRoutes.register,
        builder: (context, state) => Scaffold(),
      ),
      GoRoute(path: AppRoutes.profile, builder: (context, state) => Scaffold()),
      GoRoute(path: AppRoutes.home, builder: (context, state) => Scaffold()),
      GoRoute(
        path: AppRoutes.productDetail,
        builder: (context, state) {
          //   final productId = state.pathParameters['id']!;
          //  return ProductDetailScreen(productId: productId);
          return Scaffold();
        },
      ),
      GoRoute(
        path: AppRoutes.favorites,
        builder: (context, state) => Scaffold(),
      ),
      GoRoute(path: AppRoutes.cart, builder: (context, state) => Scaffold()),
    ],
  );
}
