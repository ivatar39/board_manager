// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:board_manager/data/auth/data_sources/auth_local_data_source.dart'
    as _i6;
import 'package:board_manager/data/auth/user/user.dart' as _i8;
import 'package:board_manager/data/games/data_sources/game_remote_data_source.dart'
    as _i4;
import 'package:board_manager/injection/modules/auto_route_injectable_module.dart'
    as _i12;
import 'package:board_manager/injection/modules/dio_injectable_module.dart'
    as _i13;
import 'package:board_manager/injection/modules/hive_injectable_module.dart'
    as _i14;
import 'package:board_manager/repository/auth/auth_repository.dart' as _i9;
import 'package:board_manager/repository/games/game_repository.dart' as _i5;
import 'package:board_manager/repository/user/user_repository.dart' as _i10;
import 'package:board_manager/ui/router/app_router.gr.dart' as _i11;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i7;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final autoRouteInjectableModule = _$AutoRouteInjectableModule();
  final dioInjectableModule = _$DioInjectableModule();
  final hiveInjectableModule = _$HiveInjectableModule();
  gh.lazySingleton<_i3.Dio>(() => dioInjectableModule.dio);
  gh.lazySingleton<_i4.GameRemoteDataSource>(
      () => _i4.GameApiRemoteDataSource(get<_i3.Dio>()));
  gh.lazySingleton<_i5.GameRepository>(
      () => _i5.GameRepository(get<_i4.GameRemoteDataSource>()));
  gh.lazySingleton<_i6.AuthLocalDataSource>(
      () => _i6.AuthHiveDataSource(get<_i7.Box<_i8.User>>()));
  gh.lazySingleton<_i9.AuthRepository>(
      () => _i9.AuthRepository(get<_i6.AuthLocalDataSource>()));
  gh.lazySingleton<_i10.UserRepository>(
      () => _i10.UserRepository(get<_i6.AuthLocalDataSource>()));
  gh.singleton<_i11.AppRouter>(autoRouteInjectableModule.router);
  await gh.singletonAsync<_i7.HiveInterface>(() => hiveInjectableModule.hive,
      preResolve: true);
  await gh.singletonAsync<_i7.Box<_i8.User>>(
      () => hiveInjectableModule.userBox(get<_i7.HiveInterface>()),
      preResolve: true);
  return get;
}

class _$AutoRouteInjectableModule extends _i12.AutoRouteInjectableModule {}

class _$DioInjectableModule extends _i13.DioInjectableModule {}

class _$HiveInjectableModule extends _i14.HiveInjectableModule {}
