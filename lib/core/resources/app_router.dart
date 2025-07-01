import 'package:elwekala/core/constants/app_routes.dart';
import 'package:elwekala/features/auth/presentation/screens/login_screen.dart';
import 'package:elwekala/features/auth/presentation/screens/profile_screen.dart';
import 'package:elwekala/features/auth/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    routes: [
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) => ProfileScreen(),
      ),
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
