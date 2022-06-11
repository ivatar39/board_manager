import 'package:board_manager/data/games/game/game.dart';
import 'package:board_manager/repository/core/core_failure.dart';
import 'package:board_manager/repository/games/game_failure.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/catalog/catalog_model.dart';
import 'package:board_manager/ui/catalog/catalog_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:surf_logger/surf_logger.dart';

const debounceSeconds = 1;

class CatalogWidgetModel extends WidgetModel<CatalogWidget, CatalogModel> implements ICatalogWidgetModel {
  final _catalogState = EntityStateNotifier<Iterable<Game>>();
  final TextEditingController _textEditingSearchController = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  final _debounceTimer = BehaviorSubject<int>()..add(0);

  @override
  ListenableState<EntityState<Iterable<Game>>> get catalogState => _catalogState;

  @override
  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey => _scaffoldMessengerKey;

  @override
  TextEditingController get textEditingSearchController => _textEditingSearchController;

  CatalogWidgetModel(CatalogModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    textEditingSearchController.addListener(_createSearchControllerListener);
    _loadCatalogBySearchQuery();
  }

  @override
  void dispose() {
    _textEditingSearchController.dispose();
    _debounceTimer.close();
    super.dispose();
  }

  @override
  Future<void> addGamePressed(Game game) async {
    try {
      await model.catalogInteractor.addGameToCollection(game);
      _showSnackBar(getGameAddedString(game.name));
    } on Exception catch (e) {
      Logger.e(e.toString());
      if (e is GameFailure) {
        _showSnackBar(
          e.map(
            couldNotAddToCollection: (_) => couldNotAddGame,
            alreadyInCollection: (_) => gameAlreadyInCollection,
          ),
        );
      } else {
        _showSnackBar(criticalError);
      }
    }
  }

  @override
  void onRetryPressed() => _loadCatalogBySearchQuery();

  Future<void> _createSearchControllerListener() async {
    _debounceTimer.debounceTime(const Duration(seconds: debounceSeconds)).listen(
      (_) async {
        await _loadCatalogBySearchQuery();
      },
    );
  }

  Future<void> _loadCatalogBySearchQuery() async {
    _catalogState.loading();
    try {
      final query = _textEditingSearchController.value.text;
      final games = await model.gameRepository.searchGamesByQuery(query);

      _catalogState.content(games);
    } on CoreFailure catch (e) {
      _catalogState.error(e);
    }
  }

  void _showSnackBar(String message) {
    scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}

abstract class ICatalogWidgetModel extends IWidgetModel {
  ListenableState<EntityState<Iterable<Game>>> get catalogState;
  TextEditingController get textEditingSearchController;
  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey;

  Future<void> addGamePressed(Game game);

  void onRetryPressed();
}
