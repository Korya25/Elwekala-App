import 'package:dartz/dartz.dart';
import 'package:elwekala/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<String, UserEntity>> login({
    required String email,
    required String password,
  });
}
