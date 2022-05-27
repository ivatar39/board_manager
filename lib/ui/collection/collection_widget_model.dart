import 'dart:async';
import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/collection/collection_failure.dart';
import 'package:board_manager/repository/collection/collection_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/collection/collection_model.dart';
import 'package:board_manager/ui/collection/collection_widget.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_logger/surf_logger.dart';

/// Builder for
CollectionWidgetModel collectionWidgetModelFactory(BuildContext context) {
  return CollectionWidgetModel(CollectionModel(
    getIt<CollectionRepository>(),
    getIt<UserRepository>(),
    getIt<AppRouter>(),
  ));
}

class CollectionWidgetModel extends WidgetModel<CollectionWidget, CollectionModel> implements ICollectionWidgetModel {
  late final StreamSubscription<List<Game>> _collectionStream;
  final _collectionState = EntityStateNotifier<List<Game>>.value([]);
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  ListenableState<EntityState<List<Game>>> get collectionState => _collectionState;

  @override
  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey => _scaffoldMessengerKey;

  CollectionWidgetModel(CollectionModel model) : super(model);

  @override
  Future<void> initWidgetModel() async {
    super.initWidgetModel();
    _collectionStream = model.watchGameCollection().listen(_updateCollectionState);
  }

  @override
  void dispose() {
    _collectionStream.cancel();
    super.dispose();
  }

  void _updateCollectionState(List<Game> games) {
    _collectionState.loading();
    try {
      _collectionState.content(games);
    } on Exception catch (exception) {
      _collectionState.error(exception);
    }
  }

  @override
  List<String> getUserNamesAndEmptyName() {
    final users = model.userRepository.getAllUserNames()..add(noOwner);
    return users;
  }

  @override
  Future<void> changeGameOwner(Game game, String ownerName) async {
    try {
      await model.collectionRepository.changeGameOwner(game, ownerName);
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
    _scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  void onRetryPressed() => initWidgetModel();

  @override
  void openCatalog() {
    model.router.push(const CatalogWidgetRoute());
  }

  @override
  void openProfile() {
    model.router.push(const ProfileWidgetRoute());
  }
}

abstract class ICollectionWidgetModel extends IWidgetModel {
  ListenableState<EntityState<List<Game>>> get collectionState;
  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey;
  List<String> getUserNamesAndEmptyName();
  Future<void> changeGameOwner(Game game, String ownerName);
  void onRetryPressed();
  void openProfile();
  void openCatalog();
}
