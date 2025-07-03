import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  final EdgeInsets padding;
  final VoidCallback onPressed;

  const FavoriteButton({
    super.key,
    required this.isFavorite,
    required this.onPressed,
    this.size = 24.0,
    this.unselectedColor = Colors.grey,
    this.selectedColor = Colors.red,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? selectedColor : unselectedColor,
          size: size,
        ),
        onPressed: onPressed,
        splashRadius: size * 0.7, 
        padding: EdgeInsets.zero, 
        constraints: BoxConstraints(), 
      ),
    );
  }
}