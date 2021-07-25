import 'package:board_manager/injection/injection.dart';
import 'package:board_manager/ui/app/app_theme.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = getIt<AppRouter>();
    return MaterialApp.router(
      title: 'BoardManager',
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      theme: appTheme,
    );
  }
}
