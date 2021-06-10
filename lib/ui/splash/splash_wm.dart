import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

@injectable
class SplashWidgetModel extends WidgetModel {
  final AuthRepository _repository;

  SplashWidgetModel(
    WidgetModelDependencies baseDependencies,
    this._repository,
  ) : super(baseDependencies);

  @override
  Future<void> onLoad() async {
    final isAuthorized = await _repository.isUserAuthorized();
    Logger.d('isAuthorized: $isAuthorized');
    super.onLoad();
  }
}
