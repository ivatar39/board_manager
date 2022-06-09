import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/auth/auth_widget_model.dart';
import 'package:board_manager/ui/auth/auth_widget_model_builder.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class AuthWidget extends ElementaryWidget<IAuthWidgetModel> {
  const AuthWidget({
    Key? key,
  }) : super(key: key, authWidgetModelFactory);

  @override
  Widget build(IAuthWidgetModel wm) {
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
                  onEditingComplete: wm.submitNameForm,
                  decoration: const InputDecoration(
                    labelText: name,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: wm.submitNameForm,
                  child: const Text(signIn),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
