import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/ui/app/translation.dart';
import 'package:board_manager/ui/profile/profile_widget_model.dart';
import 'package:board_manager/ui/profile/profile_widget_model_builder.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends ElementaryWidget<IProfileWidgetModel> {
  const ProfileWidget({
    Key? key,
  }) : super(key: key, buildProfileWidgetModel);

  @override
  Widget build(IProfileWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(profile),
      ),
      body: EntityStateNotifierBuilder<User>(
        listenableEntityState: wm.userState,
        loadingBuilder: (_, __) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        builder: (_, user) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(user!.uniqueId),
                Text(user.name),
                Text('Authorized: ${user.isAuthorized}'),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    wm.signOutAndExit(user);
                  },
                  child: const Text(signOut),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
