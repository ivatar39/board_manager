import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/collection/collection_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:elementary/elementary.dart';

class CollectionModel extends ElementaryModel {
  final CollectionRepository _collectionRepository;
  final UserRepository _userRepository;
  final AppRouter _router;

  CollectionRepository get collectionRepository => _collectionRepository;
  UserRepository get userRepository => _userRepository;
  AppRouter get router => _router;

  CollectionModel(this._collectionRepository, this._userRepository, this._router);

  Stream<Iterable<Game>> watchGameCollection() {
    return _collectionRepository.watchGameCollection();
  }
}
