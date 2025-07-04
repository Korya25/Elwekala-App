import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  final TextEditingController _searchController;
  final Function(String) onChanged;

  const HomeSearchBar({
    super.key,
    required TextEditingController searchController,
    required this.onChanged,
  }) : _searchController = searchController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: _searchController,
      hintText: AppStrings.searchHint,
      prefixIcon: Icon(Icons.search, color: AppColors.iconColor),
      onChanged: onChanged,
      suffixIcon: IconButton(
        icon: Icon(Icons.filter_list, color: AppColors.iconColor),
        onPressed: () {},
      ),
    );
  }
}
