// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:board_manager/data/auth/user/user.dart' as _i6;
import 'package:board_manager/ui/auth/auth_page.dart' as _i4;
import 'package:board_manager/ui/profile/profile_page.dart' as _i5;
import 'package:board_manager/ui/splash/splash_page.dart' as _i3;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SplashPageRouteArgs>(
              orElse: () => const SplashPageRouteArgs());
          return _i3.SplashPage(key: args.key);
        }),
    AuthPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AuthPageRouteArgs>(
              orElse: () => const AuthPageRouteArgs());
          return _i4.AuthPage(key: args.key);
        }),
    ProfilePageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfilePageRouteArgs>();
          return _i5.ProfilePage(user: args.user, key: args.key);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(AuthPageRoute.name, path: '/auth-page'),
        _i1.RouteConfig(ProfilePageRoute.name, path: '/profile-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo<SplashPageRouteArgs> {
  SplashPageRoute({_i2.Key? key})
      : super(name, path: '/', args: SplashPageRouteArgs(key: key));

  static const String name = 'SplashPageRoute';
}

class SplashPageRouteArgs {
  const SplashPageRouteArgs({this.key});

  final _i2.Key? key;
}

class AuthPageRoute extends _i1.PageRouteInfo<AuthPageRouteArgs> {
  AuthPageRoute({_i2.Key? key})
      : super(name, path: '/auth-page', args: AuthPageRouteArgs(key: key));

  static const String name = 'AuthPageRoute';
}

class AuthPageRouteArgs {
  const AuthPageRouteArgs({this.key});

  final _i2.Key? key;
}

class ProfilePageRoute extends _i1.PageRouteInfo<ProfilePageRouteArgs> {
  ProfilePageRoute({required _i6.User user, _i2.Key? key})
      : super(name,
            path: '/profile-page',
            args: ProfilePageRouteArgs(user: user, key: key));

  static const String name = 'ProfilePageRoute';
}

class ProfilePageRouteArgs {
  const ProfilePageRouteArgs({required this.user, this.key});

  final _i6.User user;

  final _i2.Key? key;
}
