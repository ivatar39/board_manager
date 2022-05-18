// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:board_manager/data/auth/data_sources/auth_local_data_source.dart'
    as _i11;
import 'package:board_manager/data/auth/user/user.dart' as _i7;
import 'package:board_manager/data/games/data_sources/game_collection_local_data_source.dart'
    as _i9;
import 'package:board_manager/data/games/data_sources/game_remote_data_source.dart'
    as _i5;
import 'package:board_manager/data/games/game/game.dart' as _i8;
import 'package:board_manager/injection/modules/auto_route_injectable_module.dart'
    as _i16;
import 'package:board_manager/injection/modules/dio_injectable_module.dart'
    as _i17;
import 'package:board_manager/injection/modules/hive_injectable_module.dart'
    as _i18;
import 'package:board_manager/repository/auth/auth_repository.dart' as _i12;
import 'package:board_manager/repository/collection/collection_repository.dart'
    as _i13;
import 'package:board_manager/repository/games/game_repository.dart' as _i10;
import 'package:board_manager/repository/user/user_repository.dart' as _i14;
import 'package:board_manager/ui/catalog/catalog_interactor.dart' as _i15;
import 'package:board_manager/ui/router/app_router.gr.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i6;
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
  gh.singleton<_i3.AppRouter>(autoRouteInjectableModule.router);
  gh.lazySingleton<_i4.Dio>(() => dioInjectableModule.dio);
  gh.lazySingleton<_i5.GameRemoteDataSource>(
      () => _i5.GameApiRemoteDataSource(get<_i4.Dio>()));
  await gh.singletonAsync<_i6.HiveInterface>(() => hiveInjectableModule.hive,
      preResolve: true);
  await gh.singletonAsync<_i6.Box<_i7.User>>(
      () => hiveInjectableModule.userBox(get<_i6.HiveInterface>()),
      preResolve: true);
  await gh.singletonAsync<_i6.Box<_i8.Game>>(
      () => hiveInjectableModule.gameBox(get<_i6.HiveInterface>()),
      preResolve: true);
  gh.lazySingleton<_i9.GameCollectionLocalDataSource>(
      () => _i9.GameCollectionHiveDataSource(get<_i6.Box<_i8.Game>>()));
  gh.singleton<_i10.GameRepository>(_i10.GameRepository(
      get<_i5.GameRemoteDataSource>(),
      get<_i9.GameCollectionLocalDataSource>()));
  gh.lazySingleton<_i11.AuthLocalDataSource>(
      () => _i11.AuthHiveDataSource(get<_i6.Box<_i7.User>>()));
  gh.lazySingleton<_i12.AuthRepository>(
      () => _i12.AuthRepository(get<_i11.AuthLocalDataSource>()));
  gh.factory<_i13.CollectionRepository>(() => _i13.CollectionRepository(
      get<_i9.GameCollectionLocalDataSource>(),
      get<_i11.AuthLocalDataSource>()));
  gh.lazySingleton<_i14.UserRepository>(
      () => _i14.UserRepository(get<_i11.AuthLocalDataSource>()));
  gh.lazySingleton<_i15.CatalogInteractor>(() => _i15.CatalogInteractor(
      get<_i14.UserRepository>(), get<_i10.GameRepository>()));
  return get;
}

class _$AutoRouteInjectableModule extends _i16.AutoRouteInjectableModule {}

class _$DioInjectableModule extends _i17.DioInjectableModule {}

class _$HiveInjectableModule extends _i18.HiveInjectableModule {}
