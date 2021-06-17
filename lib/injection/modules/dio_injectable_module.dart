import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:board_manager/tools/api_secrets.dart';

const String kApiUrl = 'https://api.boardgameatlas.com/api';

@module
abstract class DioInjectableModule {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: kApiUrl,
          headers: <String, dynamic>{
            'client_id': kClientId,
          },
        ),
      );
}
