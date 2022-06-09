import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/auth/auth_model.dart';
import 'package:board_manager/ui/auth/auth_widget_model.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/material.dart';

AuthWidgetModel authWidgetModelFactory(BuildContext context) {
  return AuthWidgetModel(
    AuthModel(
      getIt<AuthRepository>(),
      getIt<AppRouter>(),
    ),
    GlobalKey<FormState>(),
    GlobalKey<ScaffoldMessengerState>(),
  );
}
