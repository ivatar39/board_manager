// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:board_manager/ui/auth/auth_screen.dart' as _i2;
import 'package:board_manager/ui/catalog/catalog_screen.dart' as _i4;
import 'package:board_manager/ui/collection/collection_screen.dart' as _i3;
import 'package:board_manager/ui/profile/profile_screen.dart' as _i5;
import 'package:board_manager/ui/splash/splash_widget.dart' as _i1;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashWidgetRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashWidget());
    },
    AuthScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.AuthScreen());
    },
    CollectionScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.CollectionScreen());
    },
    CatalogScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: const _i4.CatalogScreen(),
          fullscreenDialog: true);
    },
    ProfileScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ProfileScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashWidgetRoute.name, path: '/'),
        _i6.RouteConfig(AuthScreenRoute.name, path: '/auth-screen'),
        _i6.RouteConfig(CollectionScreenRoute.name, path: '/collection-screen'),
        _i6.RouteConfig(CatalogScreenRoute.name, path: '/catalog-screen'),
        _i6.RouteConfig(ProfileScreenRoute.name, path: '/profile-screen')
      ];
}

/// generated route for
/// [_i1.SplashWidget]
class SplashWidgetRoute extends _i6.PageRouteInfo<void> {
  const SplashWidgetRoute() : super(SplashWidgetRoute.name, path: '/');

  static const String name = 'SplashWidgetRoute';
}

/// generated route for
/// [_i2.AuthScreen]
class AuthScreenRoute extends _i6.PageRouteInfo<void> {
  const AuthScreenRoute() : super(AuthScreenRoute.name, path: '/auth-screen');

  static const String name = 'AuthScreenRoute';
}

/// generated route for
/// [_i3.CollectionScreen]
class CollectionScreenRoute extends _i6.PageRouteInfo<void> {
  const CollectionScreenRoute()
      : super(CollectionScreenRoute.name, path: '/collection-screen');

  static const String name = 'CollectionScreenRoute';
}

/// generated route for
/// [_i4.CatalogScreen]
class CatalogScreenRoute extends _i6.PageRouteInfo<void> {
  const CatalogScreenRoute()
      : super(CatalogScreenRoute.name, path: '/catalog-screen');

  static const String name = 'CatalogScreenRoute';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileScreenRoute extends _i6.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(ProfileScreenRoute.name, path: '/profile-screen');

  static const String name = 'ProfileScreenRoute';
}
