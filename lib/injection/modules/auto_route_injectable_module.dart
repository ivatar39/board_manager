import 'package:injectable/injectable.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';

@module
abstract class AutoRouteInjectableModule {
  @singleton
  AppRouter get router => AppRouter();
}
