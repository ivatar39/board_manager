import 'package:board_manager/repository/auth/auth_failure.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/auth/auth_model.dart';
import 'package:board_manager/ui/auth/auth_widget.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

const _maxNameLength = 80;

class AuthWidgetModel extends WidgetModel<AuthWidget, AuthModel> implements IAuthWidgetModel {
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormState> _formKey;
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey;

  @override
  TextEditingController get nameController => _nameController;

  @override
  GlobalKey<FormState> get formKey => _formKey;

  @override
  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey => _scaffoldMessengerKey;

  AuthWidgetModel(AuthModel model, this._formKey, this._scaffoldMessengerKey) : super(model);

  @override
  Future<void> initWidgetModel() async {
    super.initWidgetModel();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  String? fieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return nameCannotBeEmpty;
    }
    if (value.length > _maxNameLength) {
      return incorrectName;
    }
    return null;
  }

  @override
  void submitNameForm() {
    if (formKey.currentState!.validate()) {
      _signInAndEnter(nameController.value.text);
    }
  }

  Future<void> _signInAndEnter(String name) async {
    try {
      await model.authRepository.signInOrRegisterUser(name);
      await model.router.replace(const CollectionWidgetRoute());
    } on AuthFailure catch (e) {
      e.map(
        systemMemoryFailure: (e) => _showSnackBar(memoryFailure),
      );
    }
  }

  void _showSnackBar(String message) {
    scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}

abstract class IAuthWidgetModel extends IWidgetModel {
  GlobalKey<FormState> get formKey;
  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey;
  TextEditingController get nameController;

  String? fieldValidator(String? value);

  void submitNameForm();
}
