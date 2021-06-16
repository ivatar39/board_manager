import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/auth/auth_wm.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

AuthWidgetModel createAuthWidgetModel(BuildContext context) {
  return AuthWidgetModel(
    const WidgetModelDependencies(),
    getIt<AuthRepository>(),
    getIt<AppRouter>(),
    TextEditingController(),
    GlobalKey<FormState>(),
    GlobalKey<ScaffoldMessengerState>(),
  );
}
