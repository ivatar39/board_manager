import 'package:dio/dio.dart';
import 'package:dio_firebase_performance/dio_firebase_performance.dart';
import 'package:injectable/injectable.dart';
import 'package:board_manager/tools/api_secrets.dart';

const String kApiUrl = 'https://api.boardgameatlas.com/api';

@module
abstract class DioInjectableModule {
  @lazySingleton
  Dio get dio {
    final options = BaseOptions(
      baseUrl: kApiUrl,
      queryParameters: <String, dynamic>{
        'client_id': kClientId,
      },
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    final dio = Dio(options);

    final performanceInterceptor = DioFirebasePerformanceInterceptor();
    dio.interceptors.add(performanceInterceptor);
    return dio;
  }
}
