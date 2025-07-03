import 'package:elwekala/features/home/data/models/product.dart';
import 'package:elwekala/features/home/presentation/widgets/home_app_bar.dart';
import 'package:elwekala/features/home/presentation/widgets/home_search_bar.dart';
import 'package:elwekala/features/home/presentation/widgets/sliver_grid_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16.w), child: _HomeScreenBody()),
      ),
    );
  }
}

class _HomeScreenBody extends StatefulWidget {
  const _HomeScreenBody();

  @override
  State<_HomeScreenBody> createState() => __HomeScreenBodyState();
}

class __HomeScreenBodyState extends State<_HomeScreenBody> {
  final TextEditingController _searchController = TextEditingController();

  final List<Product> products = List.generate(20, (index) {
    return Product(
      id: 'prod_$index',
      name: 'Product $index',
      price: 99.99 + index,
      description:
          'This is a description for Product $index. It is a great item with many features.',
      image: 'https://picsum.photos/seed/image$index/200/300',
      images: List.generate(
        3,
        (i) => 'https://picsum.photos/seed/image${index}_$i/200/300',
      ),
      company: ['Apple', 'Samsung', 'HP', 'Lenovo', 'Dell'][index % 5],
      status: index % 2 == 0 ? 'Available' : 'Out of Stock',
      countInStock: 5 + index % 10,
    );
  });

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        // Search Bar
        SliverToBoxAdapter(
          child: HomeSearchBar(searchController: _searchController),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16)),

        // Products Grid
        SliverGridProducts(products: products),
      ],
    );
  }
}
