import 'package:dartz/dartz.dart';
import 'package:elwekala/features/profile/domain/entities/profile_user_entity.dart';
import 'package:elwekala/features/profile/domain/repo/profile_repo.dart';

class ProfileUseCase {
  final ProfileRepo repo;

  ProfileUseCase(this.repo);

  Future<Either<String, ProfileUserEntity>> getProfile({
    required String token,
  }) async {
    return repo.getProfile(token: token);
  }
}
