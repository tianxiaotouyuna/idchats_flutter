import 'package:idchats_flutter/features/main_page/data/repositories/get_user_info_repository.dart';
import 'package:idchats_flutter/features/main_page/domain/usecases/reload_user_info_case.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';
import 'package:http/http.dart';

import 'core/util/input_converter.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'features/main_page/data/datasources/user_info_remote_datasource.dart';
import 'features/main_page/domain/usecases/push_page_case.dart';

// service locator
final sl = GetIt.instance;

Future<void> init() async {
  //! Features - mainpage feature
  sl.registerFactory(() => MainPageBloc(
  reloadUserInfoCase: sl(),
  pushPageCase: sl(),
  inputConverter: sl()));

  // Use cases
  sl.registerLazySingleton(() => ReloadUserInfoCase(sl()));
  sl.registerLazySingleton(() => PushPageCase());

  // Repository
  sl.registerLazySingleton<GetUserInfoRepository>(
      () => GetUserInfoRepository(
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
