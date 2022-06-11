import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/collection/collection_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/collection/collection_model.dart';
import 'package:board_manager/ui/collection/collection_widget_model.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/material.dart';

CollectionWidgetModel buildCollectionWidgetModel(BuildContext context) {
  return CollectionWidgetModel(CollectionModel(
    getIt<CollectionRepository>(),
    getIt<UserRepository>(),
    getIt<AppRouter>(),
  ));
}
