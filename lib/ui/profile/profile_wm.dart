import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/repository/user/user_failure.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class ProfileWidgetModel extends WidgetModel {
  final userState = EntityStreamedState<User>()..loading();

  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final AppRouter _router;

  ProfileWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._authRepository,
    this._userRepository,
    this._router,
  ) : super(baseDependencies);

  @override
  Future<void> onLoad() async {
    await loadUser();
    super.onLoad();
  }

  Future<void> loadUser() async {
    await userState.loading();

    try {
      final user = await _userRepository.getCurrentAuthorisedUser();
      await userState.content(user);
    } on UserFailure catch (e) {
      await e.map(
        userNotAuthorized: (_) async {
          await _router.replace(const AuthScreenRoute());
        },
      );
    }
  }

  Future<void> signOutAndExit(User user) async {
    await _authRepository.signOut(user);
    await _router.replace(const AuthScreenRoute());
  }
}
