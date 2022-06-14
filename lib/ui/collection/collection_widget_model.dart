import 'dart:async';
import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/collection/collection_failure.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/collection/collection_model.dart';
import 'package:board_manager/ui/collection/collection_widget.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_logger/surf_logger.dart';

class CollectionWidgetModel extends WidgetModel<CollectionWidget, CollectionModel> implements ICollectionWidgetModel {
  late final StreamSubscription<Iterable<Game>> _collectionStream;
  final _collectionState = EntityStateNotifier<Iterable<Game>>.value([]);
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  ListenableState<EntityState<Iterable<Game>>> get collectionState => _collectionState;

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
      _showSnackBar(
        e.maybeMap(
          orElse: () => criticalError,
          couldNotChangeOwner: (_) => couldNotChangeOwner,
        ),
      );
    }
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

  void _showSnackBar(String message) {
    _scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void _updateCollectionState(Iterable<Game> games) {
    _collectionState.loading();
    try {
      _collectionState.content(games);
    } on Exception catch (exception) {
      _collectionState.error(exception);
    }
  }
}

abstract class ICollectionWidgetModel extends IWidgetModel {
  ListenableState<EntityState<Iterable<Game>>> get collectionState;
  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey;

  List<String> getUserNamesAndEmptyName();

  Future<void> changeGameOwner(Game game, String ownerName);

  void onRetryPressed();

  void openCatalog();

  void openProfile();
}
