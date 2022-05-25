import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:board_manager/ui/auth/auth_screen.dart';
import 'package:board_manager/ui/catalog/catalog_screen.dart';
import 'package:board_manager/ui/collection/collection_screen.dart';
import 'package:board_manager/ui/profile/profile_screen.dart';
import 'package:board_manager/ui/splash/splash_widget.dart';

@AdaptiveAutoRouter(
  routes: <AdaptiveRoute>[
    AdaptiveRoute<dynamic>(page: SplashWidget, initial: true),
    AdaptiveRoute<dynamic>(page: AuthScreen),
    AdaptiveRoute<dynamic>(page: CollectionScreen),
    AdaptiveRoute<dynamic>(page: CatalogScreen, fullscreenDialog: true),
    AdaptiveRoute<dynamic>(page: ProfileScreen),
  ],
)
class $AppRouter {}
