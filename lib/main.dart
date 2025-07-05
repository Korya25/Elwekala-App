import 'package:dio/dio.dart';
import 'package:elwekala/core/api/dio_consumer.dart';
import 'package:elwekala/core/observer/app_bloc_observer.dart';
import 'package:elwekala/features/profile/data/data_source/profile_remote_data_source.dart';
import 'package:elwekala/features/profile/data/repos/profile_repoimpl.dart';
import 'package:elwekala/features/profile/domain/use_case/profile_use_case.dart';
import 'package:elwekala/injection.dart';
import 'package:elwekala/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  /*ProfileUseCase profileUseCase = ProfileUseCase(
    ProfileRepoimpl(ProfileRemoteDataSourceImpl(DioConsumer(dio: Dio())))..getProfile(token: "20g0h4ipdafmcq5778p"),
  );*/
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await init();
  runApp(const MyApp());
}
