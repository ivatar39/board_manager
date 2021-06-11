import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/profile/profile_wm.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';

class ProfilePage extends CoreMwwmWidget<ProfileWidgetModel> {
  final User user;
  ProfilePage({
    required this.user,
    Key? key,
  }) : super(
          key: key,
          widgetModelBuilder: (context) => ProfileWidgetModel(
            const WidgetModelDependencies(),
            getIt<AuthRepository>(),
            getIt<AppRouter>(),
          ),
        );

  @override
  WidgetState<CoreMwwmWidget<ProfileWidgetModel>, ProfileWidgetModel>
      createWidgetState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends WidgetState<ProfilePage, ProfileWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.user.uniqueId),
            Text(widget.user.name),
            Text('Authorized: ${widget.user.isAuthorized}'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                wm.signOut(widget.user);
              },
              child: const Text('Выйти из аккаунта'),
            ),
          ],
        ),
      ),
    );
  }
}
