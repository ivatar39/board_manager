import 'package:board_manager/data/core/exceptions/core_exception.dart';
import 'package:board_manager/data/games/data_sources/game_remote_data_source.dart';
import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/core/core_failure.dart';
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
    } on CoreException catch (e) {
      Logger.e(e.toString());
      // [CoreException] to failure mapping.
      throw e.map(
        noInternetConnection: (e) => const CoreFailure.checkInternetConnection(),
        timeOutException: (e) => CoreFailure.serverFailure(e.toString()),
        serverException: (e) => CoreFailure.serverFailure(e.message),
      );
    }
  }
}
