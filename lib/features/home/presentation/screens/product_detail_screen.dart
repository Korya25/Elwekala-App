import 'package:elwekala/features/home/data/models/product.dart';
import 'package:elwekala/features/home/presentation/widgets/home_app_bar.dart';
import 'package:elwekala/features/home/presentation/widgets/info_detail_screen.dart';
import 'package:elwekala/features/home/presentation/widgets/product_image_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        showBackButton: true,
        showCart: false,
        onFavoritesPressed: () {},
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: _ProductDetailScreenBody(product: product),
        ),
      ),
    );
  }
}

class _ProductDetailScreenBody extends StatelessWidget {
  final Product product;

  const _ProductDetailScreenBody({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImageCarousel(images: product.images),
        Padding(
          padding: EdgeInsets.all(16.w),
          child: InfoDetailScreen(product: product),
        ),
      ],
    );
  }
}
