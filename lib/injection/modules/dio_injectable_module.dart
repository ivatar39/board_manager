import 'package:dio/dio.dart';
import 'package:dio_firebase_performance/dio_firebase_performance.dart';
import 'package:injectable/injectable.dart';
import 'package:board_manager/tools/api_secrets.dart';

const String apiUrl = 'https://api.boardgameatlas.com/api';
const connectTime0ut = 60000;
const receiveTimeout = 40000;

@module
abstract class DioInjectableModule {
  @lazySingleton
  Dio get dio {
    final options = BaseOptions(
      baseUrl: apiUrl,
      queryParameters: <String, dynamic>{
        'client_id': clientId,
      },
      connectTimeout: connectTime0ut,
      receiveTimeout: receiveTimeout,
    );
    final dio = Dio(options);

    final performanceInterceptor = DioFirebasePerformanceInterceptor();
    dio.interceptors.add(performanceInterceptor);
    return dio;
  }
}
