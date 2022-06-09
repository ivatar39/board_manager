import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:board_manager/ui/splash/splash_model.dart';
import 'package:board_manager/ui/splash/splash_widget.dart';
import 'package:elementary/elementary.dart';

class SplashWidgetModel extends WidgetModel<SplashWidget, SplashModel> implements ISplashWidgetModel {
  SplashWidgetModel(SplashModel model) : super(model);

  @override
  Future<void> initWidgetModel() async {
    super.initWidgetModel();
    await signInIfAuthorized();
  }

  Future<void> signInIfAuthorized() async {
    final isAuthorized = await model.authRepository.isUserAuthorized();
    if (!isAuthorized) {
      await model.router.replace(const AuthWidgetRoute());
    } else {
      await model.router.replace(const CollectionWidgetRoute());
    }
  }
}

abstract class ISplashWidgetModel extends IWidgetModel {}
