class ProductFilterOptions {
  final String? status;
  final String? category;
  final String? nameQuery;
  final double? minPrice;
  final double? maxPrice;
  final String? company;
  final bool? inStock;
  final int? minSales;

  ProductFilterOptions({
    this.status,
    this.category,
    this.nameQuery,
    this.minPrice,
    this.maxPrice,
    this.company,
    this.inStock,
    this.minSales,
  });

  ProductFilterOptions copyWith({
    String? status,
    String? category,
    String? nameQuery,
    double? minPrice,
    double? maxPrice,
    String? company,
    bool? inStock,
    int? minSales,
  }) {
    return ProductFilterOptions(
      status: status ?? this.status,
      category: category ?? this.category,
      nameQuery: nameQuery ?? this.nameQuery,
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      company: company ?? this.company,
      inStock: inStock ?? this.inStock,
      minSales: minSales ?? this.minSales,
    );
  }
}
