import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/games/game_repository.dart';
import 'package:board_manager/ui/catalog/catalog_interactor.dart';
import 'package:board_manager/ui/catalog/catalog_wm.dart';
import 'package:flutter/cupertino.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

CatalogWidgetModel createCatalogWidgetModel(BuildContext context) {
  return CatalogWidgetModel(
    const WidgetModelDependencies(),
    getIt<GameRepository>(),
    getIt<CatalogInteractor>(),
  );
}
