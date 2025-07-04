import 'package:dartz/dartz.dart';
import 'package:elwekala/features/favorites/domain/entities/get_favorite_entitie.dart';
import 'package:elwekala/features/favorites/domain/repos/favorite_repo.dart';

class FavoriteUseCase {
  final FavoriteRepo repo;

  FavoriteUseCase(this.repo);

  Future<Either<String, GetFavoriteEntitie>> getAllFavorite({
    required String nationalId,
  }) {
    return repo.getAllFavorite(nationalId: nationalId);
  }
}
