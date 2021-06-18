import 'package:board_manager/repository/auth/auth_failure.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

const kMaxNameLength = 80;

class AuthWidgetModel extends WidgetModel {
  final TextEditingController nameController;
  final GlobalKey<FormState> formKey;
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  final AuthRepository _authRepository;
  final AppRouter _router;

  AuthWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._authRepository,
    this._router,
    this.nameController,
    this.formKey,
    this.scaffoldMessengerKey,
  ) : super(baseDependencies);

  String? fieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return nameCannotBeEmpty;
    }
    if (value.length > kMaxNameLength) {
      return incorrectName;
    }
    return null;
  }

  Future<void> signInAndEnter(String name) async {
    try {
      await _authRepository.registerUser(name);
      await _router.replace(const CollectionScreenRoute());
    } on AuthFailure catch (e) {
      e.map(
        systemMemoryFailure: (e) => showSnackBar(memoryFailure),
      );
    }
  }

  void showSnackBar(String message) {
    scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
