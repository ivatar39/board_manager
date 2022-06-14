import 'package:board_manager/ui/splash/splash_widget_model.dart';
import 'package:board_manager/ui/splash/splash_widget_model_builder.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class SplashWidget extends ElementaryWidget<ISplashWidgetModel> {
  const SplashWidget({
    Key? key,
  }) : super(key: key, buildSplashWidgetModel);

  @override
  Widget build(ISplashWidgetModel wm) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
