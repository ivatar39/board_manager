import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/collection/collection_failure.dart';
import 'package:board_manager/repository/collection/collection_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class CollectionWidgetModel extends WidgetModel {
  final collectionState = EntityStreamedState<List<Game>>()..loading();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  final AppRouter _router;
  final CollectionRepository _collectionRepository;
  final UserRepository _userRepository;

  CollectionWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._router,
    this._collectionRepository,
    this._userRepository,
  ) : super(baseDependencies);

  @override
  void onLoad() {
    subscribeToGameCollectionStream();
    super.onLoad();
  }

  void subscribeToGameCollectionStream() {
    subscribeHandleError<List<Game>>(
      _collectionRepository.watchGameCollection(),
      collectionState.content,
      onError: (exception) {
        if (exception is Exception) {
          collectionState.error(exception);
        } else {
          collectionState.error(Exception(exception.toString()));
        }
      },
    );
  }

  List<String> getUserNamesAndEmptyName() {
    final users = _userRepository.getAllUserNames()..add(noOwner);
    return users;
  }

  Future<void> changeGameOwner(Game game, String ownerName) async {
    try {
      await _collectionRepository.changeGameOwner(game, name);
    } on CollectionFailure catch (e) {
      Logger.e(e.toString());
      showSnackBar(
        e.maybeMap(
          orElse: () => criticalError,
          couldNotChangeOwner: (_) => couldNotChangeOwner,
        ),
      );
    }
  }

  void showSnackBar(String message) {
    scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void openCatalog() {
    _router.push(const CatalogScreenRoute());
  }

  void openProfile() {
    _router.push(const ProfileScreenRoute());
  }
}
