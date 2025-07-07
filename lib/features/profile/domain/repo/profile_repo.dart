import 'package:dartz/dartz.dart';
import 'package:elwekala/features/profile/domain/entities/profile_user_entity.dart';
import 'package:elwekala/features/profile/domain/entities/update_profile_data.dart';

abstract class ProfileRepo {
  Future<Either<String, ProfileUserEntity>> getProfile({required String token});

  Future<Either<String, UpdateProfileDataEntity>> updateProfile({
    required String token,
    required String name,
    required String email,
    required String phone,
    required String gender,
    required String password,
  });
}
