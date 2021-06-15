// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:board_manager/ui/auth/auth_screen.dart' as _i4;
import 'package:board_manager/ui/profile/profile_screen.dart' as _i5;
import 'package:board_manager/ui/splash/splash_screen.dart' as _i3;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreen();
        }),
    AuthScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.AuthScreen();
        }),
    ProfileScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.ProfileScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(AuthScreenRoute.name, path: '/auth-screen'),
        _i1.RouteConfig(ProfileScreenRoute.name, path: '/profile-screen')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class AuthScreenRoute extends _i1.PageRouteInfo {
  const AuthScreenRoute() : super(name, path: '/auth-screen');

  static const String name = 'AuthScreenRoute';
}

class ProfileScreenRoute extends _i1.PageRouteInfo {
  const ProfileScreenRoute() : super(name, path: '/profile-screen');

  static const String name = 'ProfileScreenRoute';
}
