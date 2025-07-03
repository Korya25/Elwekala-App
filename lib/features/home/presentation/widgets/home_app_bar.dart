import 'package:elwekala/core/constants/app_routes.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: buildAppBarIcon(
        context: context,
        appRoutes: AppRoutes.profile,
        icon: Icons.person_outline,
      ),
      title: Text(
        AppStrings.laptops,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      actions: [
        buildAppBarIcon(
          context: context,
          appRoutes: AppRoutes.favorites,
          icon: Icons.favorite_border,
        ),
        buildAppBarIcon(
          context: context,
          appRoutes: AppRoutes.cart,
          icon: Icons.shopping_cart_outlined,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget buildAppBarIcon({
    required BuildContext context,
    required String appRoutes,
    required IconData icon,
    Color? color = Colors.black,
    double? size = 24,
  }) {
    return IconButton(
      onPressed: () => context.pushNamed(appRoutes),
      icon: Icon(icon, color: color, size: size),
    );
  }
}
