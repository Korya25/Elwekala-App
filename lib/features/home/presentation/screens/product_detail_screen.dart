import 'package:carousel_slider/carousel_slider.dart';
import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/widgets/custom_button.dart';
import 'package:elwekala/features/home/data/models/product.dart';
import 'package:elwekala/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

class _ProductDetailScreenBody extends StatefulWidget {
  final Product product;

  const _ProductDetailScreenBody({required this.product});

  @override
  State<_ProductDetailScreenBody> createState() =>
      _ProductDetailScreenBodyState();
}

class _ProductDetailScreenBodyState extends State<_ProductDetailScreenBody> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImageCarousel(images: widget.product.images),
        Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TitleAndPrice(product: widget.product),
              SizedBox(height: 8.h),
              _CompanyAndStatus(product: widget.product),
              SizedBox(height: 16.h),
              _RatingAndStock(product: widget.product),
              SizedBox(height: 24.h),
              _DescriptionSection(product: widget.product),
              SizedBox(height: 24.h),
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
    );
  }
}

class ProductImageCarousel extends StatefulWidget {
  final List<String> images;

  const ProductImageCarousel({super.key, required this.images});

  @override
  State<ProductImageCarousel> createState() => _ProductImageCarouselState();
}

class _ProductImageCarouselState extends State<ProductImageCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      width: double.infinity,
      child: Stack(
        children: [
          _buildCarousel(),
          Positioned(bottom: 12.h, left: 12.w, child: _buildIndicator()),
        ],
      ),
    );
  }

  Widget _buildCarousel() {
    return CarouselSlider.builder(
      itemCount: widget.images.length,
      itemBuilder: (context, index, _) {
        final imageUrl = widget.images[index];
        return Image.network(
          imageUrl,
          width: double.infinity,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => Container(
            color: AppColors.secondaryColor,
            child: const Icon(Icons.image_not_supported),
          ),
        );
      },
      options: CarouselOptions(
        height: 300.h,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        viewportFraction: 1.0,
        onPageChanged: (index, _) => setState(() => _currentIndex = index),
      ),
    );
  }

  Widget _buildIndicator() {
    return Row(
      children: List.generate(widget.images.length, (index) {
        final isActive = index == _currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 2.w),
          width: isActive ? 12.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: isActive ? AppColors.primaryColor : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(4.r),
          ),
        );
      }),
    );
  }
}

class _TitleAndPrice extends StatelessWidget {
  final Product product;

  const _TitleAndPrice({required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            product.name,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
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
    );
  }
}

class _CompanyAndStatus extends StatelessWidget {
  final Product product;

  const _CompanyAndStatus({required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: product.status == 'New'
                ? AppColors.successColor
                : Colors.orange,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Text(
            product.status,
            style: TextStyle(color: Colors.white, fontSize: 12.sp),
          ),
        ),
      ],
    );
  }
}

class _RatingAndStock extends StatelessWidget {
  final Product product;

  const _RatingAndStock({required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < product.rating.floor() ? Icons.star : Icons.star_border,
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
        const Spacer(),
        Text(
          '${product.countInStock} in stock',
          style: TextStyle(fontSize: 14.sp, color: AppColors.successColor),
        ),
      ],
    );
  }
}

class _DescriptionSection extends StatelessWidget {
  final Product product;

  const _DescriptionSection({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.h),
        Text(
          product.description,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.secondaryTextColor,
          ),
        ),
      ],
    );
  }
}
