import 'package:elwekala/core/constants/app_routes.dart';
import 'package:elwekala/features/auth/presentation/screens/login_screen.dart';
import 'package:elwekala/features/favorites/presentation/screens/favorites_screen.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';
import 'package:elwekala/features/home/presentation/screens/home_screen.dart';
import 'package:elwekala/features/home/presentation/screens/product_detail_screen.dart';
import 'package:elwekala/features/profile/screens/profile_screen.dart';
import 'package:elwekala/features/auth/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.cart,
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
      GoRoute(path: AppRoutes.home, builder: (context, state) => HomeScreen()),
      GoRoute(
        path: AppRoutes.productDetail,
        name: AppRoutes.productDetail,
        builder: (context, state) {
          final product = state.extra as Product;
          return ProductDetailScreen(product: product);
        },
      ),
      GoRoute(
        path: AppRoutes.favorites,
        name: AppRoutes.favorites,
        builder: (context, state) => FavoritesScreen(),
      ),
      GoRoute(
        path: AppRoutes.cart,
        name: AppRoutes.cart,

        builder: (context, state) => Scaffold(),
      ),
    ],
  );
}
