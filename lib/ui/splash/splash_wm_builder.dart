import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:board_manager/ui/splash/splash_wm.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

SplashWidgetModel createSplashWidgetModel(BuildContext context) {
  return SplashWidgetModel(
    const WidgetModelDependencies(),
    getIt<AuthRepository>(),
    getIt<AppRouter>(),
  );
}
