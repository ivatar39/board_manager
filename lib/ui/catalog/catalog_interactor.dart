import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/games/game_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CatalogInteractor {
  final UserRepository _userRepository;
  final GameRepository _gameRepository;

  CatalogInteractor(
    this._userRepository,
    this._gameRepository,
  );

  Future<void> addGameToCollection(Game game) async {
    final currentUser = await _userRepository.getCurrentAuthorisedUser();
    await _gameRepository.addGameToCollection(game, owner: currentUser);
  }
}
