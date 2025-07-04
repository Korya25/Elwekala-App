import 'package:dartz/dartz.dart';
import 'package:elwekala/features/favorites/domain/entities/get_favorite_entitie.dart';

abstract class FavoriteRepo {
  Future<Either<String, GetFavoriteEntitie>> getAllFavorite({
    required String nationalId,
  });
}
