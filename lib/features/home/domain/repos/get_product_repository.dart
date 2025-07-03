import 'package:dartz/dartz.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';

abstract class GetProductRepository {
  Future<Either<String, Product>> getLaptops();
}
