import 'package:dartz/dartz.dart';
import 'package:elwekala/features/favorites/domain/repos/favorite_repo.dart';
import 'package:elwekala/features/home/domain/entities/product.dart';

class FavoriteUseCase {
  final FavoriteRepo repo;

  FavoriteUseCase(this.repo);

  Future<Either<String, List<Product>>> getAllFavorite({
    required String nationalId,
  }) {
    return repo.getAllFavorite(nationalId: nationalId);
  }
}
