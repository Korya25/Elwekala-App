class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final String image;
  final List<String> images;
  final String company;
  final String status;
  final int countInStock;
  final double rating;
  final int reviews;
  final bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.images,
    required this.company,
    required this.status,
    required this.countInStock,
    this.rating = 0.0,
    this.reviews = 0,
    this.isFavorite = false,
  });
}