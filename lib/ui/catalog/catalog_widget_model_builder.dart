import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/games/game_repository.dart';
import 'package:board_manager/ui/catalog/catalog_interactor.dart';
import 'package:board_manager/ui/catalog/catalog_model.dart';
import 'package:board_manager/ui/catalog/catalog_widget_model.dart';
import 'package:flutter/material.dart';

CatalogWidgetModel catalogWidgetModelFactory(BuildContext context) {
  return CatalogWidgetModel(
    CatalogModel(
      getIt<CatalogInteractor>(),
      getIt<GameRepository>(),
    ),
  );
}
