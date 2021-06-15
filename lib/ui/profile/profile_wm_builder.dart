import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/profile/profile_wm.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

ProfileWidgetModel createProfileWidgetModel(BuildContext context) {
  return ProfileWidgetModel(
    const WidgetModelDependencies(),
    getIt<AuthRepository>(),
    getIt<UserRepository>(),
    getIt<AppRouter>(),
  );
}
