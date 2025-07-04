import 'package:dartz/dartz.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';

abstract class FavoriteRepo {
  Future<Either<String, List<Product>>> getAllFavorite({
    required String nationalId,
  });
}
