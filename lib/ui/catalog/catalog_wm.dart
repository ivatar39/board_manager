import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/games/game_failure.dart';
import 'package:board_manager/repository/games/game_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class CatalogWidgetModel extends WidgetModel {
  final catalogState = EntityStreamedState<List<Game>>()..loading();
  final TextEditingController textEditingSearchController;

  final GameRepository _gameRepository;

  CatalogWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._gameRepository,
    this.textEditingSearchController,
  ) : super(baseDependencies);

  @override
  void onBind() {
    textEditingSearchController.addListener(textSearchControllerListener);

    super.onBind();
  }

  @override
  Future<void> onLoad() async {
    await loadCatalogBySearchQuery();
    super.onLoad();
  }

  @override
  void dispose() {
    textEditingSearchController.dispose();
    super.dispose();
  }

  Future<void> textSearchControllerListener() async {
    await loadCatalogBySearchQuery();
  }

  Future<void> loadCatalogBySearchQuery() async {
    await catalogState.loading();
    try {
      final query = textEditingSearchController.value.text;
      final games = await _gameRepository.searchGamesByQuery(query);

      await catalogState.content(games);
    } on GameFailure catch (e) {
      await e.map(
        checkInternetConnection: (f) async {
          await catalogState.error(f);
        },
        serverFailure: (f) async {
          await catalogState.error(f);
        },
      );
    }
  }
}
