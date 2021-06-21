import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/data/games/exceptions/game_exception.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:rxdart/rxdart.dart';

abstract class GameCollectionLocalDataSource {
  /// saves [Game] in local data storage
  ///
  /// may throw [GameException.memoryException]
  /// or [GameException.memoryException]
  Future<void> createGame(Game game);

  /// subscribes to [Game]s
  /// in local data storage
  ///
  ///
  Stream<List<Game>> watchGames();

  /// edits [Game] in local data storage
  ///
  /// may throw [GameException.memoryException]
  Future<void> editGame(Game game);

  /// saves [Game] in local data storage
  ///
  /// may throw [GameException.memoryException]
  Future<void> deleteGame(Game game);
}

@LazySingleton(as: GameCollectionLocalDataSource)
class GameCollectionHiveDataSource implements GameCollectionLocalDataSource {
  final Box<Game> _gameBox;

  GameCollectionHiveDataSource(
    this._gameBox,
  );

  @override
  Future<void> createGame(Game game) async {
    if (_gameBox.containsKey(game.id)) {
      throw const GameException.alreadyInStorageException();
    }
    await _performActionOnGameBox(
      game,
      (game) async {
        await _gameBox.put(game.id, game);
      },
    );
  }

  @override
  Stream<List<Game>> watchGames() async* {
    // Staring to watch with initial null event to get initial data
    final initialEvent = BoxEvent(null, null, false);
    final stream = _gameBox.watch().startWith(initialEvent);
    yield* stream.map((event) => _gameBox.values.toList());
  }

  @override
  Future<void> editGame(Game game) async {
    await _performActionOnGameBox(
      game,
      (game) async {
        await _gameBox.put(game.id, game);
      },
    );
  }

  @override
  Future<void> deleteGame(Game game) async {
    await _performActionOnGameBox(
      game,
      (game) async {
        await _gameBox.delete(game.id);
      },
    );
  }

  Future<void> _performActionOnGameBox(
    Game game,
    Future<void> Function(Game game) forwardedCall,
  ) async {
    try {
      return await forwardedCall(game);
    } on Exception catch (e) {
      Logger.e(e.toString());
      throw const GameException.memoryException();
    }
  }
}
