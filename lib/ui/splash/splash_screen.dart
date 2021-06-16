import 'package:board_manager/ui/splash/splash_wm.dart';
import 'package:board_manager/ui/splash/splash_wm_builder.dart';
import 'package:flutter/material.dart';
import 'package:surf_mwwm/surf_mwwm.dart';

class SplashScreen extends CoreMwwmWidget<SplashWidgetModel> {
  const SplashScreen({Key? key})
      : super(
          key: key,
          widgetModelBuilder: createSplashWidgetModel,
        );

  @override
  WidgetState<CoreMwwmWidget<SplashWidgetModel>, SplashWidgetModel> createWidgetState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends WidgetState<SplashScreen, SplashWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
