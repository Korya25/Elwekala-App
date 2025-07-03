import 'package:dio/dio.dart';
import 'package:elwekala/core/api/api_consumer.dart';
import 'package:elwekala/core/api/end_points.dart';
import 'package:elwekala/core/errors/exceptions.dart';
import 'package:elwekala/features/home/data/models/product_model.dart';

abstract class GetProductRemoteDataSource {
  Future<ProductModel> getLaptops();
}

class GetProductRemoteDataSourceImpl extends GetProductRemoteDataSource {
  final ApiConsumer apiConsumer;

  GetProductRemoteDataSourceImpl({required this.apiConsumer});
  @override
  Future<ProductModel> getLaptops() async {
    try {
      // response
      final response = await apiConsumer.get(EndPoints.getLaptops);

      return ProductModel.fromJson(response);
    } on DioException catch (e) {
      handleDioException(e);
      rethrow;
    }
  }
}
