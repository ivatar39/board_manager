import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/profile/profile_model.dart';
import 'package:board_manager/ui/profile/profile_widget_model.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/material.dart';

ProfileWidgetModel buildProfileWidgetModel(BuildContext context) {
  return ProfileWidgetModel(
    ProfileModel(
      getIt<AuthRepository>(),
      getIt<UserRepository>(),
      getIt<AppRouter>(),
    ),
  );
}
