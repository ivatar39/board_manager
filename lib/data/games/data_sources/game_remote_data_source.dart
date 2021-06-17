import 'package:board_manager/data/games/exceptions/game_exception.dart';
import 'package:board_manager/data/games/game/game.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';

// ignore: one_member_abstracts
abstract class GameRemoteDataSource {
  /// returns list of [Game]s, names of which
  /// contain query
  ///
  /// may throw [GameException]
  Future<List<Game>> getGamesByQuery(String query);
}

@LazySingleton(as: GameRemoteDataSource)
class GameApiRemoteDataSource implements GameRemoteDataSource {
  final Dio _dio;

  GameApiRemoteDataSource(
    this._dio,
  );

  @override
  Future<List<Game>> getGamesByQuery(String query) async {
    try {
      final result = await _dio.get<Map<String, dynamic>>(
        '/search',
        queryParameters: <String, dynamic>{'name': query},
      );

      final games = <Game>[];
      if (result.data != null) {
        final data = result.data!['games'] as List;

        for (final element in data) {
          games.add(Game.fromJson(element as Map<String, dynamic>));
        }
      }

      return games;
    } on DioError catch (e) {
      Logger.e(e.message);
      Logger.e(e.error.toString());
      if (e.response?.data != null) {
        Logger.e(e.response!.data.toString());
      }
      if (e.message.contains('SocketException')) {
        throw const GameException.noInternetConnection();
      }

      throw GameException.serverException(e.message);
    }
  }
}
