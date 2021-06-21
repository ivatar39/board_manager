import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/data/games/game/game.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path;

@module
abstract class HiveInjectableModule {
  @preResolve
  @singleton
  Future<HiveInterface> get hive async {
    final appDocumentDirectory = await path.getApplicationDocumentsDirectory();

    final _hive = Hive
      ..init(appDocumentDirectory.path)
      ..registerAdapter(UserAdapter())
      ..registerAdapter(GameAdapter());

    return _hive;
  }

  @preResolve
  @singleton
  Future<Box<User>> userBox(HiveInterface hive) => hive.openBox<User>('users');

  @preResolve
  @singleton
  Future<Box<Game>> gameBox(HiveInterface hive) => hive.openBox<Game>('games');
}
