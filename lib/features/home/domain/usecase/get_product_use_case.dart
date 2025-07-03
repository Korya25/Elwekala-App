import 'package:dartz/dartz.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';
import 'package:elwekala/features/home/domain/repos/get_product_repository.dart';

class GetProductUseCase {
  final GetProductRepository repository;

  GetProductUseCase({required this.repository});

  // get laptop product
  Future<Either<String, Product>> getLaptops({
    required String id,
    required String status,
    required String category,
    required String name,
    required double price,
    required String description,
    required String image,
    required List<String> images,
    required String company,
    required int countInStock,
    required int sales,
  }) {
    return repository.getLaptops(
      id: id,
      status: status,
      category: category,
      name: name,
      price: price,
      description: description,
      image: image,
      images: images,
      company: company,
      countInStock: countInStock,
      sales: sales,
    );
  }
}
