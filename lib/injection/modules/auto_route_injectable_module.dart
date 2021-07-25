import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AutoRouteInjectableModule {
  @singleton
  AppRouter get router => AppRouter();
}
