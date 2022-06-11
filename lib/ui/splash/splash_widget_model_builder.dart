import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:board_manager/ui/splash/splash_model.dart';
import 'package:board_manager/ui/splash/splash_widget_model.dart';
import 'package:flutter/material.dart';

SplashWidgetModel buildSplashWidgetModel(BuildContext context) {
  return SplashWidgetModel(
    SplashModel(
      getIt<AuthRepository>(),
      getIt<AppRouter>(),
    ),
  );
}
