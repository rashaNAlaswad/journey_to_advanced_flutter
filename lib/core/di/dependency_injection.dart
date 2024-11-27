import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:journey_to_advanced_flutter/features/signup/cubit/signup_cubit.dart';

import '../../features/login/cubit/login_cubit.dart';
import '../../features/login/data/repository/login_repository.dart';
import '../../features/signup/data/repository/dignup_repository.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

setupGetIt() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

// login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

// signup
  getIt
      .registerLazySingleton<SignupRepository>(() => SignupRepository(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
