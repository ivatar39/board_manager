import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/profile/profile_wm.dart';
import 'package:board_manager/ui/profile/profile_wm_builder.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class ProfileScreen extends CoreMwwmWidget<ProfileWidgetModel> {
  const ProfileScreen({
    Key? key,
  }) : super(
          key: key,
          widgetModelBuilder: createProfileWidgetModel,
        );

  @override
  WidgetState<CoreMwwmWidget<ProfileWidgetModel>, ProfileWidgetModel> createWidgetState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends WidgetState<ProfileScreen, ProfileWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kProfile),
      ),
      body: EntityStateBuilder<User>(
        streamedState: wm.userState,
        builder: (context, user) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(user.uniqueId),
                Text(user.name),
                Text('Authorized: ${user.isAuthorized}'),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    wm.signOutAndExit(user);
                  },
                  child: const Text(kSignOut),
                ),
              ],
            ),
          );
        },
        loadingBuilder: (context, user) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
