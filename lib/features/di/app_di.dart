import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart'; // Import Dio
import 'package:rapl_club/core/constants/api_constants.dart';
import 'package:rapl_club/core/network/app_rest_client/rest_client_service.dart';
import 'package:rapl_club/features/auth/data/repository/auth_repository.dart';
import 'package:rapl_club/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rapl_club/features/home/data/repository/home_repository.dart';
import 'package:rapl_club/features/home/presentation/bloc/home_bloc.dart';

final appDi = GetIt.instance;

void setup() {
  _setupDio(); // Add Dio setup
  _setupRestClient();
  _setupAuthDi();
  _setupHomeDi();
}

void _setupDio() {
  appDi.registerLazySingleton<Dio>(() => Dio()); // Register Dio instance
}

void _setupRestClient() {
  String baseUrl = ApiConstants.baseUrl;
  appDi.registerLazySingleton<RestClientService>(() => RestClientService(client: appDi<Dio>(), baseUrl: "https://wups1k.kz/api/v1"));
}

void _setupAuthDi() {
  appDi.registerLazySingleton<AuthRepository>(() => AuthRepository(restClientService: appDi<RestClientService>()));

  appDi.registerFactory<AuthBloc>(() => AuthBloc(appDi<AuthRepository>()));
}

void _setupHomeDi() {
  appDi.registerLazySingleton<HomeRepository>(() => HomeRepository(restClientService: appDi<RestClientService>()));

  appDi.registerFactory<HomeBloc>(() => HomeBloc(repository: appDi<HomeRepository>()));
}

