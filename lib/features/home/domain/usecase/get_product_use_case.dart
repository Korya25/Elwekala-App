import 'package:dartz/dartz.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';
import 'package:elwekala/features/home/domain/repos/get_product_repository.dart';

class GetProductUseCase {
  final GetProductRepository repository;

  GetProductUseCase({required this.repository});

  // get laptop product
  Future<Either<String, Product>> getLaptops() {
    return repository.getLaptops();
  }
}
