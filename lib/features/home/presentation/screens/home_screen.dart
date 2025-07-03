import 'package:elwekala/core/constants/app_colors.dart';
import 'package:elwekala/core/widgets/custom_text_form_field.dart';
import 'package:elwekala/features/home/data/models/product.dart';
import 'package:elwekala/features/home/presentation/widgets/home_app_bar.dart';
import 'package:elwekala/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedCategory = 'All';
  String _selectedFilter = 'Popular';

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
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              // Search Bar
              CustomTextFormField(
                controller: _searchController,
                hintText: 'Search for laptops...',
                prefixIcon: Icon(Icons.search, color: AppColors.iconColor),
                suffixIcon: IconButton(
                  icon: Icon(Icons.filter_list, color: AppColors.iconColor),
                  onPressed: () {
                    // Show filter options
                  },
                ),
              ),
              SizedBox(height: 16.h),

              // Category Tabs
              SizedBox(
                height: 40.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: ['All', 'Dell', 'HP', 'Lenovo', 'Apple'].map((
                    category,
                  ) {
                    return Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: ChoiceChip(
                        label: Text(category),
                        selected: _selectedCategory == category,
                        onSelected: (selected) {
                          setState(() {
                            _selectedCategory = selected ? category : 'All';
                          });
                        },
                        selectedColor: AppColors.primaryColor,
                        labelStyle: TextStyle(
                          color: _selectedCategory == category
                              ? Colors.white
                              : AppColors.primaryTextColor,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 16.h),

              // Filter Tabs
              SizedBox(
                height: 40.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      [
                        'Popular',
                        'Newest',
                        'Price: Low to High',
                        'Price: High to Low',
                      ].map((filter) {
                        return Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: ChoiceChip(
                            label: Text(filter),
                            selected: _selectedFilter == filter,
                            onSelected: (selected) {
                              setState(() {
                                _selectedFilter = selected ? filter : 'Popular';
                              });
                            },
                            selectedColor: AppColors.primaryColor,
                            labelStyle: TextStyle(
                              color: _selectedFilter == filter
                                  ? Colors.white
                                  : AppColors.primaryTextColor,
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
              SizedBox(height: 16.h),

              // Product Grid
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 0.7,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    product: product,
                    onTap: () => context.go('/product/${product.id}'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
