import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/repository/user/user_failure.dart';
import 'package:board_manager/ui/profile/profile_model.dart';
import 'package:board_manager/ui/profile/profile_widget.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:elementary/elementary.dart';

class ProfileWidgetModel extends WidgetModel<ProfileWidget, ProfileModel> implements IProfileWidgetModel {
  final _userState = EntityStateNotifier<User>();

  @override
  ListenableState<EntityState<User>> get userState => _userState;

  ProfileWidgetModel(ProfileModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadUser();
  }

  @override
  void dispose() {
    _userState.dispose();
    super.dispose();
  }

  @override
  Future<void> signOutAndExit(User user) async {
    await model.authRepository.signOut(user);
    await model.router.pushAndPopUntil(
      const AuthWidgetRoute(),
      predicate: (_) => false,
    );
  }

  Future<void> _loadUser() async {
    _userState.loading();
    try {
      final user = await model.getCurrentAuthorisedUser();
      _userState.content(user);
    } on UserFailure catch (e) {
      await e.map(
        userNotAuthorized: (_) async {
          await model.router.replace(const AuthWidgetRoute());
        },
      );
    }
  }
}

abstract class IProfileWidgetModel extends IWidgetModel {
  ListenableState<EntityState<User>> get userState;

  Future<void> signOutAndExit(User user);
}
