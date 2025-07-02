import 'package:dartz/dartz.dart';
import 'package:elwekala/features/auth/domain/entities/user_entity.dart';
import 'package:elwekala/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase {
  final AuthRepository repository;

  LoginUsecase({required this.repository});

  // login method
  Future<Either<String, UserEntity>> call({
    required String email,
    required String password,
  }) {
    return repository.login(email: email, password: password);
  }
}
