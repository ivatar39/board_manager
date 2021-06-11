import 'package:board_manager/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = getIt<AppRouter>();
    return MaterialApp.router(
      title: 'BoardManager',
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.green,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
