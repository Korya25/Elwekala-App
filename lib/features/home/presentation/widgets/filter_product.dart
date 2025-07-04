class ProductFilterOptions {
  final String? status;
  final String? category;
  final String? name;
  final num? maxPrice;
  final num? minPrice;
  final String? company;

  ProductFilterOptions({
     this.status,
     this.category,
     this.name,
     this.maxPrice,
     this.minPrice,
     this.company,
  });

  ProductFilterOptions copyWith({
    final String? status,
    final String? category,
    final String? name,
    final num? maxPrice,
    final num? minPrice,
    final String? company,
  }) {
    return ProductFilterOptions(
      status: status ?? this.status,
      category: category ?? this.category,
      name: name ?? this.name,
      maxPrice: maxPrice ?? this.maxPrice,
      minPrice: minPrice ?? this.minPrice,
      company: company ?? this.company,
    );
  }
}
