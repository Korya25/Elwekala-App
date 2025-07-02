import 'package:dio/dio.dart';
import 'package:elwekala/core/api/api_consumer.dart';
import 'package:elwekala/core/api/dio_consumer.dart';
import 'package:elwekala/features/auth/data/dataSources/auth_remote_data_source.dart';
import 'package:elwekala/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:elwekala/features/auth/domain/repositories/auth_repository.dart';
import 'package:elwekala/features/auth/domain/usecases/login_usecase.dart';
import 'package:elwekala/features/auth/presentation/controllers/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Dio
  sl.registerLazySingleton<Dio>(() => Dio());

  // API Consumer
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: sl()));

  // DataSource
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiConsumer: sl()),
  );

  // Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => LoginUsecase(sl()));

  // Cubit
  sl.registerFactory(() => AuthCubit(sl()));
}
