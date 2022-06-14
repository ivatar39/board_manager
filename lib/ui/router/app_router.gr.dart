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
import 'package:board_manager/ui/auth/auth_widget.dart' as _i2;
import 'package:board_manager/ui/catalog/catalog_widget.dart' as _i4;
import 'package:board_manager/ui/collection/collection_widget.dart' as _i3;
import 'package:board_manager/ui/profile/profile_widget.dart' as _i5;
import 'package:board_manager/ui/splash/splash_widget.dart' as _i1;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashWidgetRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(routeData: routeData, child: const _i1.SplashWidget());
    },
    AuthWidgetRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(routeData: routeData, child: const _i2.AuthWidget());
    },
    CollectionWidgetRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(routeData: routeData, child: const _i3.CollectionWidget());
    },
    CatalogWidgetRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(routeData: routeData, child: const _i4.CatalogWidget(), fullscreenDialog: true);
    },
    ProfileWidgetRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(routeData: routeData, child: const _i5.ProfileWidget());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashWidgetRoute.name, path: '/'),
        _i6.RouteConfig(AuthWidgetRoute.name, path: '/auth-widget'),
        _i6.RouteConfig(CollectionWidgetRoute.name, path: '/collection-widget'),
        _i6.RouteConfig(CatalogWidgetRoute.name, path: '/catalog-widget'),
        _i6.RouteConfig(ProfileWidgetRoute.name, path: '/profile-widget')
      ];
}

/// generated route for
/// [_i1.SplashWidget]
class SplashWidgetRoute extends _i6.PageRouteInfo<void> {
  const SplashWidgetRoute() : super(SplashWidgetRoute.name, path: '/');

  static const String name = 'SplashWidgetRoute';
}

/// generated route for
/// [_i2.AuthWidget]
class AuthWidgetRoute extends _i6.PageRouteInfo<void> {
  const AuthWidgetRoute() : super(AuthWidgetRoute.name, path: '/auth-widget');

  static const String name = 'AuthWidgetRoute';
}

/// generated route for
/// [_i3.CollectionWidget]
class CollectionWidgetRoute extends _i6.PageRouteInfo<void> {
  const CollectionWidgetRoute() : super(CollectionWidgetRoute.name, path: '/collection-widget');

  static const String name = 'CollectionWidgetRoute';
}

/// generated route for
/// [_i4.CatalogWidget]
class CatalogWidgetRoute extends _i6.PageRouteInfo<void> {
  const CatalogWidgetRoute() : super(CatalogWidgetRoute.name, path: '/catalog-widget');

  static const String name = 'CatalogWidgetRoute';
}

/// generated route for
/// [_i5.ProfileWidget]
class ProfileWidgetRoute extends _i6.PageRouteInfo<void> {
  const ProfileWidgetRoute() : super(ProfileWidgetRoute.name, path: '/profile-widget');

  static const String name = 'ProfileWidgetRoute';
}
