import 'package:elwekala/features/home/presentation/widgets/favorite_button.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elwekala/core/widgets/ios_back_button.dart';

class CarouselActions extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onFavoritePressed;
  final VoidCallback onBackPressed;

  const CarouselActions({
    super.key,
    required this.isFavorite,
    required this.onFavoritePressed,
    required this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 20.w,
          top: 20.h,
          child: FavoriteButton(
            isFavorite: isFavorite,
            onPressed: onFavoritePressed,
            size: 50.0,
            selectedColor: Colors.pink,
            unselectedColor: Colors.grey.shade400,
          ),
        ),
        Positioned(
          left: 20.w,
          top: 20.h,
          child: IOSBackButton(onPressed: onBackPressed),
        ),
      ],
    );
  }
}