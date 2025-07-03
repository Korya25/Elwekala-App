import 'package:elwekala/core/constants/app_routes.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';
import 'package:elwekala/features/home/presentation/widgets/product_card.dart';
import 'package:elwekala/features/home/presentation/widgets/sliver_grid_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SliverGridProducts extends StatelessWidget {
  const SliverGridProducts({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        final product = products[index];
        return SliverGridAnimation(
          productIndex: index,
          child: ProductCard(
            product: product,
            onTap: () =>
                context.pushNamed(AppRoutes.productDetail, extra: product),
          ),
        );
      }, childCount: products.length),
      gridDelegate: buildGridDelegate(),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount buildGridDelegate() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 16.w,
      mainAxisSpacing: 16.h,
      childAspectRatio: 0.65,
    );
  }
}
