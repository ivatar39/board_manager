import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:board_manager/ui/auth/auth_screen.dart';
import 'package:board_manager/ui/profile/profile_screen.dart';
import 'package:board_manager/ui/splash/splash_screen.dart';

@AdaptiveAutoRouter(
  routes: <AdaptiveRoute>[
    AdaptiveRoute<dynamic>(page: SplashScreen, initial: true),
    AdaptiveRoute<dynamic>(page: AuthScreen),
    AdaptiveRoute<dynamic>(page: ProfileScreen),
  ],
)
class $AppRouter {}