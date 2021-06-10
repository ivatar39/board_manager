import 'package:flutter/material.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();
    return MaterialApp.router(
      title: 'BoardManager',
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
