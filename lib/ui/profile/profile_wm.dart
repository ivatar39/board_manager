import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class ProfileWidgetModel extends WidgetModel {
  final AuthRepository _repository;
  final AppRouter _router;

  ProfileWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._repository,
    this._router,
  ) : super(baseDependencies);

  @override
  Future<void> onLoad() async {
    super.onLoad();
  }

  Future<void> signOut(User user) async {
    await _repository.signOut(user);
    await _router.replace(AuthPageRoute());
  }
}
