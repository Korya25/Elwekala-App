import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_routes.dart';
import 'package:elwekala/core/widgets/custom_button.dart';
import 'package:elwekala/features/home/data/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(product.company),
        actions: [
          IconButton(
            onPressed: () {
              // Toggle favorite
            },
            icon: Icon(
              product.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: product.isFavorite ? AppColors.errorColor : null,
            ),
          ),
          IconButton(
            onPressed: () => context.pushNamed(AppRoutes.cart),
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Carousel
            SizedBox(
              height: 300.h,
              child: PageView.builder(
                itemCount: product.images.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    product.images[index],
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppColors.secondaryColor,
                        child: Icon(Icons.image_not_supported),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title and Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),

                  // Company and Status
                  Row(
                    children: [
                      Text(
                        product.company,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.secondaryTextColor,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: product.status == 'New'
                              ? AppColors.successColor
                              : Colors.orange,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          product.status,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),

                  // Rating and Stock
                  Row(
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          return Icon(
                            index < product.rating.floor()
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                            size: 20.sp,
                          );
                        }),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '${product.rating.toStringAsFixed(1)} (${product.reviews} reviews)',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      Spacer(),
                      Text(
                        '${product.countInStock} in stock',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.successColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),

                  // Description
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                  SizedBox(height: 24.h),

                  // Add to Cart Button
                  CustomButton(
                    text: 'Add to Cart',
                    onPressed: () {
                      // Add to cart logic
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
