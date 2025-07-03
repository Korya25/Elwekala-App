import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/constants/app_strings.dart';
import 'package:elwekala/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: _searchController,
      hintText: AppStrings.searchHint,
      prefixIcon: Icon(Icons.search, color: AppColors.iconColor),
      suffixIcon: IconButton(
        icon: Icon(Icons.filter_list, color: AppColors.iconColor),
        onPressed: () {
        },
      ),
    );
  }
}
