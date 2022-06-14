import 'package:board_manager/repository/games/game_repository.dart';
import 'package:board_manager/ui/catalog/catalog_interactor.dart';
import 'package:elementary/elementary.dart';

class CatalogModel extends ElementaryModel {
  final CatalogInteractor _catalogInteractor;
  final GameRepository _gameRepository;

  CatalogInteractor get catalogInteractor => _catalogInteractor;
  GameRepository get gameRepository => _gameRepository;

  CatalogModel(this._catalogInteractor, this._gameRepository);
}
