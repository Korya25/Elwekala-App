import 'package:dartz/dartz.dart';
import 'package:elwekala/features/profile/domain/entities/profile_user_entity.dart';

abstract class ProfileRepo {
  Future<Either<String, ProfileUserEntity>> getProfile({required String token});
}
