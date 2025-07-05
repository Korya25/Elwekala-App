import 'package:dio/dio.dart';
import 'package:elwekala/core/api/dio_consumer.dart';
import 'package:elwekala/core/observer/app_bloc_observer.dart';
import 'package:elwekala/features/cart/data/data_source/cart_remote_data_source.dart';
import 'package:elwekala/features/cart/data/repo/cart_repo_impl.dart';
import 'package:elwekala/features/cart/domain/useCase/cart_use_case.dart';
import 'package:elwekala/injection.dart';
import 'package:elwekala/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  CartUseCase cartUseCase = CartUseCase(
    CartRepoImpl(CartRemoteDataSourceImpl(DioConsumer(dio: Dio()))),
  )..updateCart(nationalId: "01026524572123"
  ,
   productId: '64666fba91c71d884185b781', quantity: "5");
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await init();
  runApp(const MyApp());
}
