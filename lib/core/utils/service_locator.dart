import 'package:book/Features/home/data/repos/home_repo_impl.dart';
import 'package:book/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

//عدم تكرار انشاء الكائنات
final getIt = GetIt.instance;

void setupServiceLocator() {
  //انشاء النسخة من كائن واحده فقط
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}
