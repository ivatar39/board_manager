import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:board_manager/ui/auth/auth_page.dart';
import 'package:board_manager/ui/profile/profile_page.dart';
import 'package:board_manager/ui/splash/splash_page.dart';

@AdaptiveAutoRouter(
  routes: <AdaptiveRoute>[
    AdaptiveRoute<dynamic>(page: SplashPage, initial: true),
    AdaptiveRoute<dynamic>(page: AuthPage),
    AdaptiveRoute<dynamic>(page: ProfilePage),
  ],
)
class $AppRouter {}
