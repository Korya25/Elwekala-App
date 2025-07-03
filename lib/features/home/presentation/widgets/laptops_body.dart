import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';
import 'package:elwekala/features/home/presentation/widgets/home_search_bar.dart';
import 'package:elwekala/features/home/presentation/widgets/sliver_grid_products.dart';
import 'package:flutter/material.dart';

class LaptopSuccessBody extends StatelessWidget {
  final List<Product> products;
  final TextEditingController searchController;

  const LaptopSuccessBody({
    super.key,
    required this.products,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: HomeSearchBar(searchController: searchController),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: Text(
            ' ${products.length} results',
            style: TextStyle(fontSize: 20, color: AppColors.secondaryTextColor),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),

        SliverGridProducts(products: products),
      ],
    );
  }
}

// Loading Widget
class LaptopLoadingBody extends StatelessWidget {
  const LaptopLoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

// Failure Widget
class LaptopFailureBody extends StatelessWidget {
  final String errorMessage;

  const LaptopFailureBody({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Error: $errorMessage'));
  }
}
