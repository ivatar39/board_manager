import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class SplashWidgetModel extends WidgetModel {
  final AuthRepository _authRepository;
  final AppRouter _router;

  SplashWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._authRepository,
    this._router,
  ) : super(baseDependencies);

  @override
  Future<void> onLoad() async {
    await signInIfAuthorized();
    super.onLoad();
  }

  Future<void> signInIfAuthorized() async {
    final isAuthorized = await _authRepository.isUserAuthorized();
    if (!isAuthorized) {
      await _router.replace(const AuthScreenRoute());
    } else {
      await _router.replace(const ProfileScreenRoute());
    }
  }
}
