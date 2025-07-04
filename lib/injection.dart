import 'package:dio/dio.dart';
import 'package:elwekala/core/api/api_consumer.dart';
import 'package:elwekala/core/api/dio_consumer.dart';
import 'package:elwekala/features/auth/data/dataSources/auth_remote_data_source.dart';
import 'package:elwekala/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:elwekala/features/auth/domain/repositories/auth_repository.dart';
import 'package:elwekala/features/auth/domain/usecases/auth_use_case.dart';
import 'package:elwekala/features/auth/presentation/controllers/auth_cubit.dart';
import 'package:elwekala/features/favorites/data/dataSources/favorit_remote_data_source.dart';
import 'package:elwekala/features/favorites/data/repos/get_favorite_repo_impl.dart';
import 'package:elwekala/features/favorites/domain/repos/favorite_repo.dart';
import 'package:elwekala/features/favorites/domain/useCase/favorite_use_case.dart';
import 'package:elwekala/features/favorites/presentation/controllers/favorite_cubit.dart';
import 'package:elwekala/features/home/data/dataSources/get_product_remote_data_source.dart';
import 'package:elwekala/features/home/data/repos/get_product_repo_impl.dart';
import 'package:elwekala/features/home/domain/repos/get_product_repository.dart';
import 'package:elwekala/features/home/domain/usecase/get_product_use_case.dart';
import 'package:elwekala/features/home/presentation/controllers/get_laptops_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Dio
  sl.registerLazySingleton<Dio>(() => Dio());

  // API Consumer
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: sl()));

  // ------------------ Auth ------------------

  // DataSource
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiConsumer: sl()),
  );

  // Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => AuthUseCase(sl()));

  // Cubit
  sl.registerFactory(() => AuthCubit(sl()));

  // ------------------ Home - Products ------------------

  // DataSource
  sl.registerLazySingleton<GetProductRemoteDataSource>(
    () => GetProductRemoteDataSourceImpl(apiConsumer: sl()),
  );

  // Repository
  sl.registerLazySingleton<GetProductRepository>(
    () => GetProductRepoImpl(remoteDataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton(() => GetProductUseCase(sl()));

  // Cubit
  sl.registerFactory(() => GetLaptopsCubit(sl()));

  // ------------------ Favorite ------------------

  // DataSource
  sl.registerLazySingleton<FavoriteRemoteDataSource>(
    () => FavoriteRemoteDataSourceImpl(apiConsumer: sl()),
  );

  // Repository
  sl.registerLazySingleton<FavoriteRepo>(
    () => GetFavoriteRepoImpl(favoriteRemoteDataSource: sl()),
  );

  // UseCase
  sl.registerLazySingleton(() => FavoriteUseCase(sl()));

  // Cubit
  sl.registerFactory(() => FavoriteCubit(sl()));
}
