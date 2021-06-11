import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:board_manager/ui/splash/splash_wm.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class SplashPage extends CoreMwwmWidget<SplashWidgetModel> {
  SplashPage({Key? key})
      : super(
          key: key,
          widgetModelBuilder: (context) => SplashWidgetModel(
            const WidgetModelDependencies(),
            getIt<AuthRepository>(),
            getIt<AppRouter>(),
          ),
        );

  @override
  WidgetState<CoreMwwmWidget<SplashWidgetModel>, SplashWidgetModel>
      createWidgetState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends WidgetState<SplashPage, SplashWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
