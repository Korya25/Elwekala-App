import 'package:dartz/dartz.dart';
import 'package:elwekala/core/errors/exceptions.dart';
import 'package:elwekala/features/profile/data/data_source/profile_remote_data_source.dart';
import 'package:elwekala/features/profile/domain/entities/profile_user_entity.dart';
import 'package:elwekala/features/profile/domain/repo/profile_repo.dart';

class ProfileRepoimpl extends ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepoimpl(this.profileRemoteDataSource);
  @override
  Future<Either<String, ProfileUserEntity>> getProfile({
    required String token,
  }) async {
    try {
      final model = await profileRemoteDataSource.getProfile(token: token);
      return Right(model);
    } on ServerException catch (e) {
      return Left(e.errorModel.message);
    }
  }
}
