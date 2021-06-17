import 'package:board_manager/data/games/data_sources/game_remote_data_source.dart';
import 'package:board_manager/data/games/exceptions/game_exception.dart';
import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/games/game_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';

@lazySingleton
class GameRepository {
  final GameRemoteDataSource _gameRemoteDataSource;

  GameRepository(
    this._gameRemoteDataSource,
  );

  Future<List<Game>> searchGamesByQuery(String query) async {
    try {
      final games = await _gameRemoteDataSource.getGamesByQuery(query);
      return games;
    } on GameException catch (e) {
      Logger.e(e.toString());
      e.map(
        noInternetConnection: (e) => throw const GameFailure.checkInternetConnection(),
        timeOutException: (e) => throw GameFailure.serverFailure(e.toString()),
        serverException: (e) => throw GameFailure.serverFailure(e.message),
      );
    }
  }
}
