// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:board_manager/data/auth/data_source/auth_local_data_source.dart'
    as _i3;
import 'package:board_manager/data/auth/user/user.dart' as _i5;
import 'package:board_manager/injection/modules/auto_route_injectable_module.dart'
    as _i9;
import 'package:board_manager/injection/modules/hive_injectable_module.dart'
    as _i10;
import 'package:board_manager/repository/auth/auth_repository.dart' as _i6;
import 'package:board_manager/repository/user/user_repository.dart' as _i7;
import 'package:board_manager/ui/router/app_router.gr.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final autoRouteInjectableModule = _$AutoRouteInjectableModule();
  final hiveInjectableModule = _$HiveInjectableModule();
  gh.lazySingleton<_i3.AuthLocalDataSource>(
      () => _i3.AuthHiveDataSource(get<_i4.Box<_i5.User>>()));
  gh.lazySingleton<_i6.AuthRepository>(
      () => _i6.AuthRepository(get<_i3.AuthLocalDataSource>()));
  gh.lazySingleton<_i7.UserRepository>(
      () => _i7.UserRepository(get<_i3.AuthLocalDataSource>()));
  gh.singleton<_i8.AppRouter>(autoRouteInjectableModule.router);
  await gh.singletonAsync<_i4.HiveInterface>(() => hiveInjectableModule.hive,
      preResolve: true);
  await gh.singletonAsync<_i4.Box<_i5.User>>(
      () => hiveInjectableModule.userBox(get<_i4.HiveInterface>()),
      preResolve: true);
  return get;
}

class _$AutoRouteInjectableModule extends _i9.AutoRouteInjectableModule {}

class _$HiveInjectableModule extends _i10.HiveInjectableModule {}
