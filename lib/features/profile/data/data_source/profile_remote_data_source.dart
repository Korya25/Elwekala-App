import 'package:dio/dio.dart';
import 'package:elwekala/core/api/api_consumer.dart';
import 'package:elwekala/core/api/end_points.dart';
import 'package:elwekala/core/errors/exceptions.dart';
import 'package:elwekala/features/profile/data/model/profile_user_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileUserModel> getProfile({required String token});
}

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final ApiConsumer apiConsumer;

  ProfileRemoteDataSourceImpl(this.apiConsumer);
  @override
  Future<ProfileUserModel> getProfile({required String token}) async {
    try {
      final response = await apiConsumer.post(
        EndPoints.getProfile,
        data: {ApiKeys.token: token},
      );
      return ProfileUserModel.fromJson(response[ApiKeys.user]);
    } on DioException catch (e) {
      handleDioException(e);
      rethrow;
    }
  }
}
