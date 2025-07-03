import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';
import 'package:elwekala/features/home/presentation/widgets/filter_product.dart';
import 'package:elwekala/features/home/presentation/widgets/home_search_bar.dart';
import 'package:elwekala/features/home/presentation/widgets/sliver_grid_products.dart';
import 'package:flutter/material.dart';

class LaptopSuccessBody extends StatefulWidget {
  final List<Product> products;
  final TextEditingController searchController;

  const LaptopSuccessBody({
    super.key,
    required this.products,
    required this.searchController,
  });

  @override
  State<LaptopSuccessBody> createState() => _LaptopSuccessBodyState();
}

class _LaptopSuccessBodyState extends State<LaptopSuccessBody> {
  ProductFilterOptions filterOptions = ProductFilterOptions();
  List<Product> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    applyFilter();
  }

  void applyFilter() {
    setState(() {
      filteredProducts = widget.products.where((product) {
        final matchesStatus =
            filterOptions.status == null ||
            product.status == filterOptions.status;
        final matchesCategory =
            filterOptions.category == null ||
            product.category == filterOptions.category;
        final matchesName =
            filterOptions.nameQuery == null ||
            product.name.toLowerCase().contains(
              filterOptions.nameQuery!.toLowerCase(),
            );
        final matchesMinPrice =
            filterOptions.minPrice == null ||
            product.price >= filterOptions.minPrice!;
        final matchesMaxPrice =
            filterOptions.maxPrice == null ||
            product.price <= filterOptions.maxPrice!;
        final matchesCompany =
            filterOptions.company == null ||
            product.company == filterOptions.company;
        final matchesStock =
            filterOptions.inStock == null ||
            (product.countInStock > 0) == filterOptions.inStock;
        final matchesSales =
            filterOptions.minSales == null ||
            product.sales >= filterOptions.minSales!;

        return matchesStatus &&
            matchesCategory &&
            matchesName &&
            matchesMinPrice &&
            matchesMaxPrice &&
            matchesCompany &&
            matchesStock &&
            matchesSales;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
        
          child: HomeSearchBar(searchController: widget.searchController,
          
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: Text(
            ' ${filteredProducts.length} results',
            style: TextStyle(fontSize: 20, color: AppColors.secondaryTextColor),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),

        SliverGridProducts(products: widget.products),
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
