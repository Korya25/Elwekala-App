import 'package:dartz/dartz.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';

abstract class GetProductRepository {
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
  });
}
