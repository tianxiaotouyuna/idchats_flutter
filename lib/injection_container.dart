import 'package:idchats_flutter/features/main_page/domain/repositories/main_page_repository.dart';
import 'package:idchats_flutter/features/main_page/domain/usecases/main_page_case.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/config/network/network_info.dart';
import 'package:http/http.dart';

import 'core/util/input_converter.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'features/main_page/data/datasources/user_info_remote_datasource.dart';

// service locator
final sl = GetIt.instance;

Future<void> init() async {
  //! Features - mainpage feature
  sl.registerFactory(() => MainPageBloc(
  mainPageCase: sl(),
  inputConverter: sl()));

  // Use cases
  sl.registerLazySingleton(() => MainPageCase(sl()));

  // Repository
  sl.registerLazySingleton<MainPageRepository>(
      () => MainPageRepository(
            remoteDataSource:sl(),
            networkInfo: sl(),
          ));
  // Data sources
  sl.registerLazySingleton<UserInfoRemoteDataSource>(
      () => UserInfoRemoteDataSourceImpl(client: sl()));

  //! Core
  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
