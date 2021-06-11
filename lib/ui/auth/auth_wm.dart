import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class AuthWidgetModel extends WidgetModel {
  final AuthRepository _repository;
  final AppRouter _router;

  AuthWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._repository,
    this._router,
  ) : super(baseDependencies);

  @override
  Future<void> onLoad() async {
    super.onLoad();
  }

  Future<void> signIn(String name) async {
    final user = await _repository.registerUser(name);
    if (user != null) {
      await _router.replace(ProfilePageRoute(user: user));
    } else {}
  }
}
