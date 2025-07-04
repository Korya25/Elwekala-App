import 'package:dartz/dartz.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';

abstract class CartRepo {
  Future<Either<String, List<Product>>> getCart({required String nationalId});
  Future<Either<String, List<Product>>> addCart({
    required String nationalId,
    required String productId,
    required String quantity,
  });
  Future<Either<String, List<Product>>> deleteCart({
    required String nationalId,
    required String productId,
  });
  Future<Either<String, List<Product>>> updateCart({
    required String nationalId,
    required String productId,
    required String quantity,
  });
}
