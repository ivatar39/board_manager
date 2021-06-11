import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/auth/auth_wm.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class AuthPage extends CoreMwwmWidget<AuthWidgetModel> {
  AuthPage({Key? key})
      : super(
          key: key,
          widgetModelBuilder: (context) => AuthWidgetModel(
            const WidgetModelDependencies(),
            getIt<AuthRepository>(),
            getIt<AppRouter>(),
          ),
        );

  @override
  WidgetState<CoreMwwmWidget<AuthWidgetModel>, AuthWidgetModel>
      createWidgetState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends WidgetState<AuthPage, AuthWidgetModel> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вход'),
      ),
      body: Form(
        key: _formKey,
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
                controller: _nameController,
                validator: (value) {
                  if (value!.isEmpty || value.length > 80) {
                    return 'Неверный ввод';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'ФИО',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    wm.signIn(_nameController.value.text);
                  }
                },
                child: const Text('Войти в аккаунт'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
