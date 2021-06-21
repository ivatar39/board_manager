import 'package:board_manager/data/auth/data_sources/auth_local_data_source.dart';
import 'package:board_manager/data/games/data_sources/game_collection_local_data_source.dart';
import 'package:board_manager/data/games/exceptions/game_exception.dart';
import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/collection/collection_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';

@injectable
class CollectionRepository {
  final GameCollectionLocalDataSource _gameCollectionLocalDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  CollectionRepository(
    this._gameCollectionLocalDataSource,
    this._authLocalDataSource,
  );

  Stream<List<Game>> watchGameCollection() async* {
    try {
      yield* _gameCollectionLocalDataSource.watchGames();
    } on GameException catch (e) {
      Logger.e(e.toString());
      throw const CollectionFailure.couldNotWatchCollection();
    }
  }

  Future<void> changeGameOwner(Game game, String ownerName) async {
    try {
      final newOwner = _authLocalDataSource.getAllUsers().firstWhere((u) => u.name == ownerName);
      final gameWithChangedOwner = game.copyWith(owner: newOwner);
      await _gameCollectionLocalDataSource.editGame(gameWithChangedOwner);
    } on GameException catch (e) {
      Logger.e(e.toString());
      throw const CollectionFailure.couldNotChangeOwner();
    }
  }
}
