import 'dart:async';

import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/core/core_failure.dart';
import 'package:board_manager/repository/games/game_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

const debounceSeconds = 1;

class CatalogWidgetModel extends WidgetModel {
  final catalogState = EntityStreamedState<List<Game>>()..loading();
  final TextEditingController textEditingSearchController = TextEditingController();

  final _debounceTimer = BehaviorSubject<int>()..add(0);

  final GameRepository _gameRepository;

  CatalogWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._gameRepository,
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
}
