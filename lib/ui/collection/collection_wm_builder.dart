import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/collection/collection_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/collection/collection_wm.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

CollectionWidgetModel createCollectionWidgetModel(BuildContext context) {
  return CollectionWidgetModel(
    const WidgetModelDependencies(),
    getIt<AppRouter>(),
    getIt<CollectionRepository>(),
    getIt<UserRepository>(),
  );
}
