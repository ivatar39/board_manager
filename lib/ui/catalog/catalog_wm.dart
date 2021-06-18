import 'dart:async';

import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/core/core_failure.dart';
import 'package:board_manager/repository/games/game_failure.dart';
import 'package:board_manager/repository/games/game_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

const debounceSeconds = 1;

class CatalogWidgetModel extends WidgetModel {
  final catalogState = EntityStreamedState<List<Game>>()..loading();
  final TextEditingController textEditingSearchController = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  final _debounceTimer = BehaviorSubject<int>()..add(0);

  final GameRepository _gameRepository;
  final UserRepository _userRepository;

  CatalogWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._gameRepository,
    this._userRepository,
  ) : super(baseDependencies);

  @override
  Future<void> onLoad() async {
    await loadCatalogBySearchQuery();
    super.onLoad();
  }

  @override
  void onBind() {
    textEditingSearchController.addListener(createSearchControllerListener);

    super.onBind();
  }

  @override
  void dispose() {
    textEditingSearchController.dispose();
    _debounceTimer.close();
    super.dispose();
  }

  Future<void> createSearchControllerListener() async {
    _debounceTimer.debounceTime(const Duration(seconds: debounceSeconds)).listen(
      (event) async {
        await loadCatalogBySearchQuery();
      },
    );
  }

  Future<void> loadCatalogBySearchQuery() async {
    await catalogState.loading();
    try {
      final query = textEditingSearchController.value.text;
      final games = await _gameRepository.searchGamesByQuery(query);

      await catalogState.content(games);
    } on CoreFailure catch (e) {
      await catalogState.error(e);
    }
  }

  Future<void> addGameToCollection(Game game) async {
    try {
      final currentUser = await _userRepository.getCurrentAuthorisedUser();
      await _gameRepository.addGameToCollection(game, owner: currentUser);
      showSnackBar(getGameAddedString(game.name));
    } on Exception catch (e) {
      Logger.e(e.toString());
      if (e is GameFailure) {
        showSnackBar(
          e.map(
            couldNotAddToCollection: (_) => couldNotAddGame,
            alreadyInCollection: (_) => gameAlreadyInCollection,
          ),
        );
      } else {
        showSnackBar(criticalError);
      }
    }
  }

  void showSnackBar(String message) {
    scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
