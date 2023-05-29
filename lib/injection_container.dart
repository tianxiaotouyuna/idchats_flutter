import 'package:idchats_flutter/features/main_page/domain/repositories/main_page_repository.dart';
import 'package:idchats_flutter/features/main_page/domain/usecases/main_page_case.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/config/network/network_info.dart';
import 'core/util/input_converter.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'features/main_page/data/datasources/user_info_remote_datasource.dart';
import 'package:idchats_flutter/features/edit_user_info_page/presentation/bloc/edit_user_info_page_bloc.dart';
import 'package:idchats_flutter/features/edit_user_info_page/data/datasources/edit_user_info_page_remote_datasource.dart';
import 'package:idchats_flutter/features/edit_user_info_page/domain/repository/edit_user_info_page_repository.dart';
import 'package:idchats_flutter/features/edit_user_info_page/domain/usecase/edit_user_info_page_usecase.dart';
import 'package:idchats_flutter/features/chat_page/presentation/bloc/chat_page_bloc.dart';
import 'package:idchats_flutter/features/chat_page/data/datasources/chat_page_remote_datasource.dart';
import 'package:idchats_flutter/features/chat_page/domain/repository/chat_page_repository.dart';
import 'package:idchats_flutter/features/chat_page/domain/usecase/chat_page_usecase.dart';
import 'package:idchats_flutter/features/message_page/presentation/bloc/message_page_bloc.dart';
import 'package:idchats_flutter/features/message_page/data/datasources/message_page_remote_datasource.dart';
import 'package:idchats_flutter/features/message_page/domain/repository/message_page_repository.dart';
import 'package:idchats_flutter/features/message_page/domain/usecase/message_page_usecase.dart';
import 'package:idchats_flutter/features/mint_page/presentation/bloc/mint_page_bloc.dart';
import 'package:idchats_flutter/features/mint_page/data/datasources/mint_page_remote_datasource.dart';
import 'package:idchats_flutter/features/mint_page/domain/repository/mint_page_repository.dart';
import 'package:idchats_flutter/features/mint_page/domain/usecase/mint_page_usecase.dart';
import 'package:idchats_flutter/features/campaign_page/presentation/bloc/campaign_page_bloc.dart';
import 'package:idchats_flutter/features/campaign_page/data/datasources/campaign_page_remote_datasource.dart';
import 'package:idchats_flutter/features/campaign_page/domain/repository/campaign_page_repository.dart';
import 'package:idchats_flutter/features/campaign_page/domain/usecase/campaign_page_usecase.dart';
import 'package:idchats_flutter/features/space_page/presentation/bloc/space_page_bloc.dart';
import 'package:idchats_flutter/features/space_page/data/datasources/space_page_remote_datasource.dart';
import 'package:idchats_flutter/features/space_page/domain/repository/space_page_repository.dart';
import 'package:idchats_flutter/features/space_page/domain/usecase/space_page_usecase.dart';
import 'package:idchats_flutter/features/application_page/presentation/bloc/application_page_bloc.dart';
import 'package:idchats_flutter/features/application_page/data/datasources/application_page_remote_datasource.dart';
import 'package:idchats_flutter/features/application_page/domain/repository/application_page_repository.dart';
import 'package:idchats_flutter/features/application_page/domain/usecase/application_page_usecase.dart';
import 'package:idchats_flutter/features/setting_page/presentation/bloc/setting_page_bloc.dart';
import 'package:idchats_flutter/features/setting_page/data/datasources/setting_page_remote_datasource.dart';
import 'package:idchats_flutter/features/setting_page/domain/repository/setting_page_repository.dart';
import 'package:idchats_flutter/features/setting_page/domain/usecase/setting_page_usecase.dart';
import 'package:idchats_flutter/features/menu_page/presentation/bloc/menu_page_bloc.dart';
import 'package:idchats_flutter/features/menu_page/data/datasources/menu_page_remote_datasource.dart';
import 'package:idchats_flutter/features/menu_page/domain/repository/menu_page_repository.dart';
import 'package:idchats_flutter/features/menu_page/domain/usecase/menu_page_usecase.dart';
import 'package:idchats_flutter/features/app/presentation/bloc/app_bloc.dart';
import 'package:idchats_flutter/features/app/data/datasources/app_remote_datasource.dart';
import 'package:idchats_flutter/features/app/domain/repository/app_repository.dart';
import 'package:idchats_flutter/features/app/domain/usecase/app_usecase.dart';
// injection begin

final sl = GetIt.instance;

Future<void> init() async {
  // Features - mainpage feature
	sl.registerFactory(() => AppBloc(mainUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => MenuPageBloc(menuPageUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => SettingPageBloc(settingPageUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => ApplicationPageBloc(applicationPageUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => SpacePageBloc(spacePageUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => CampaignPageBloc(campaignPageUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => MintPageBloc(mintPageUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => MessagePageBloc(messagePageUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => ChatPageBloc(chatPageUseCase: sl(),inputConverter: sl()));
	sl.registerFactory(() => EditUserInfoPageBloc(editUserInfoPageUseCase: sl(),inputConverter: sl()));
  sl.registerFactory(() => MainPageBloc(mainPageCase: sl(),inputConverter: sl()));
  // Use cases
	sl.registerLazySingleton(() => AppUseCase(sl()));
	sl.registerLazySingleton(() => MenuPageUseCase(sl()));
	sl.registerLazySingleton(() => SettingPageUseCase(sl()));
	sl.registerLazySingleton(() => ApplicationPageUseCase(sl()));
	sl.registerLazySingleton(() => SpacePageUseCase(sl()));
	sl.registerLazySingleton(() => CampaignPageUseCase(sl()));
	sl.registerLazySingleton(() => MintPageUseCase(sl()));
	sl.registerLazySingleton(() => MessagePageUseCase(sl()));
	sl.registerLazySingleton(() => ChatPageUseCase(sl()));
	sl.registerLazySingleton(() => EditUserInfoPageUseCase(sl()));
  sl.registerLazySingleton(() => MainPageCase(sl()));
  // Repository
	sl.registerLazySingleton<AppRepository>(() => AppRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<MenuPageRepository>(() => MenuPageRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<SettingPageRepository>(() => SettingPageRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<ApplicationPageRepository>(() => ApplicationPageRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<SpacePageRepository>(() => SpacePageRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<CampaignPageRepository>(() => CampaignPageRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<MintPageRepository>(() => MintPageRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<MessagePageRepository>(() => MessagePageRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<ChatPageRepository>(() => ChatPageRepository(remoteDataSource:sl(),networkInfo: sl()));
	sl.registerLazySingleton<EditUserInfoPageRepository>(() => EditUserInfoPageRepository(remoteDataSource:sl(),networkInfo: sl()));
  sl.registerLazySingleton<MainPageRepository>(() => MainPageRepository(remoteDataSource:sl(),networkInfo: sl()));
  // Data sources
	sl.registerLazySingleton<AppRemoteDataSource>(() => AppRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<MenuPageRemoteDataSource>(() => MenuPageRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<SettingPageRemoteDataSource>(() => SettingPageRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<ApplicationPageRemoteDataSource>(() => ApplicationPageRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<SpacePageRemoteDataSource>(() => SpacePageRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<CampaignPageRemoteDataSource>(() => CampaignPageRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<MintPageRemoteDataSource>(() => MintPageRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<MessagePageRemoteDataSource>(() => MessagePageRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<ChatPageRemoteDataSource>(() => ChatPageRemoteDataSourceImpl(client: sl()));
	sl.registerLazySingleton<EditUserInfoPageRemoteDataSource>(() => EditUserInfoPageRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<UserInfoRemoteDataSource>(() => UserInfoRemoteDataSourceImpl(client: sl()));
  //! Core
  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
