import 'package:dio/dio.dart';
import 'package:elwekala/core/api/api_consumer.dart';
import 'package:elwekala/core/api/api_interpreter.dart';
import 'package:elwekala/core/api/end_points.dart';
import 'package:elwekala/core/errors/exceptions.dart';
import 'package:elwekala/features/auth/data/models/login_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginModel> login({required String email, required String password});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiConsumer apiConsumer;

  AuthRemoteDataSourceImpl({required this.apiConsumer});

  @override
  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    try {
      // response
      final response = await apiConsumer.post(
        EndPoints.login,
        data: {ApiKeys.email: email, ApiKeys.password: password},
      );

      // check response
      ApiInterpreter.checkResponseStatus(response);

      // return data
      return LoginModel.fromJson(response);
    } on DioException catch (e) {
      handleDioException(e);
      rethrow;
    }
  }
}
