import 'package:backdropia/features/home/data/repo/home_repo_impl.dart';
import 'package:backdropia/features/home/domain/repo/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_services.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() {
  Dio dio = Dio();
  dio.interceptors.add(
    LogInterceptor(
      error: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      request: true,
      responseHeader: true,
    ),
  );
  getIt.registerSingleton<ApiServices>(ApiServices(dio: dio));
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(apiServices: getIt<ApiServices>()));

  
}
