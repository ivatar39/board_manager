import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/data/core/exceptions/core_exception.dart';
import 'package:board_manager/data/games/data_sources/game_collection_local_data_source.dart';
import 'package:board_manager/data/games/data_sources/game_remote_data_source.dart';
import 'package:board_manager/data/games/exceptions/game_exception.dart';
import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/core/core_failure.dart';
import 'package:board_manager/repository/games/game_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';

@lazySingleton
class GameRepository {
  final GameRemoteDataSource _gameRemoteDataSource;
  final GameCollectionLocalDataSource _gameCollectionLocalDataSource;

  GameRepository(
    this._gameRemoteDataSource,
    this._gameCollectionLocalDataSource,
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

  Future<void> addGameToCollection(Game game, {required User owner}) async {
    try {
      final gameWithOwner = game.copyWith(owner: owner);
      await _gameCollectionLocalDataSource.createGame(gameWithOwner);
    } on GameException catch (e) {
      Logger.e(e.toString());
      // [GameException] to failure mapping.
      throw e.map(
        memoryException: (e) => const GameFailure.couldNotAddToCollection(),
        alreadyInStorageException: (_) => const GameFailure.alreadyInCollection(),
      );
    }
  }
}
