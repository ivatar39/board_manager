import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:board_manager/ui/splash/splash_model.dart';
import 'package:board_manager/ui/splash/splash_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

/// Builder for
SplashWidgetModel splashWidgetModelFactory(BuildContext context) {
  return SplashWidgetModel(
    SplashModel(
      getIt<AuthRepository>(),
      getIt<AppRouter>(),
    ),
  );
}

class SplashWidgetModel extends WidgetModel<SplashWidget, SplashModel> implements ISplashWidgetModel {
  SplashWidgetModel(SplashModel model) : super(model);

  @override
  Future<void> initWidgetModel() async {
    super.initWidgetModel();
    await signInIfAuthorized();
  }

  Future<void> signInIfAuthorized() async {
    final isAuthorized = await model.authRepository.isUserAuthorized();
    if (!isAuthorized) {
      await model.router.replace(const AuthScreenRoute());
    } else {
      await model.router.replace(const CollectionScreenRoute());
    }
  }
}

abstract class ISplashWidgetModel extends IWidgetModel {}
