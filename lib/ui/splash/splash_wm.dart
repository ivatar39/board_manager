import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class SplashWidgetModel extends WidgetModel {
  final AuthRepository _repository;
  final AppRouter _router;

  SplashWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._repository,
    this._router,
  ) : super(baseDependencies);

  @override
  Future<void> onLoad() async {
    final isAuthorized = await _repository.isUserAuthorized();
    Logger.d('isAuthorized: $isAuthorized');
    if (!isAuthorized) {
      await _router.replace(AuthPageRoute());
    }
    super.onLoad();
  }
}
