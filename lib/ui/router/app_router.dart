import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:board_manager/ui/auth/auth_widget.dart';
import 'package:board_manager/ui/catalog/catalog_widget.dart';
import 'package:board_manager/ui/collection/collection_widget.dart';
import 'package:board_manager/ui/profile/profile_widget.dart';
import 'package:board_manager/ui/splash/splash_widget.dart';

@AdaptiveAutoRouter(
  routes: <AdaptiveRoute>[
    AdaptiveRoute<dynamic>(page: SplashWidget, initial: true),
    AdaptiveRoute<dynamic>(page: AuthWidget),
    AdaptiveRoute<dynamic>(page: CollectionWidget),
    AdaptiveRoute<dynamic>(page: CatalogWidget, fullscreenDialog: true),
    AdaptiveRoute<dynamic>(page: ProfileWidget),
  ],
)
class $AppRouter {}
