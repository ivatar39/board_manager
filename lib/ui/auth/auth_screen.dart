import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/auth/auth_wm.dart';
import 'package:board_manager/ui/auth/auth_wm_builder.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class AuthScreen extends CoreMwwmWidget<AuthWidgetModel> {
  const AuthScreen({Key? key})
      : super(
          key: key,
          widgetModelBuilder: createAuthWidgetModel,
        );

  @override
  WidgetState<CoreMwwmWidget<AuthWidgetModel>, AuthWidgetModel> createWidgetState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends WidgetState<AuthScreen, AuthWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: wm.scaffoldMessengerKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(authorization),
        ),
        body: Form(
          key: wm.formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                const SizedBox(height: 42),
                Image.asset(
                  'assets/board_game_icon.png',
                  height: 120,
                  width: 100,
                ),
                const SizedBox(height: 42),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: wm.nameController,
                  validator: wm.fieldValidator,
                  onEditingComplete: _submitNameForm,
                  decoration: const InputDecoration(
                    labelText: name,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: _submitNameForm,
                  child: const Text(signIn),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitNameForm() {
    if (wm.formKey.currentState!.validate()) {
      wm.signInAndEnter(wm.nameController.value.text);
    }
  }
}
