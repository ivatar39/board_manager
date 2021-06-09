import 'package:board_manager/data/auth/exceptions/auth_exception.dart';
import 'package:board_manager/data/auth/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';
import 'package:hive/hive.dart';

abstract class AuthLocalDataSource {
  /// saves given [User] to local source
  ///
  /// may throw [AuthException]
  Future<void> saveUser(User user);

  /// returns current [User] from local source
  ///
  /// may throw [AuthException]
  Future<User> getUser();

  /// edits [User] in local source
  ///
  /// may throw [AuthException]
  Future<void> editUser(User newUser);

  /// deletes [User] from local source
  ///
  /// may throw [AuthException]
  Future<void> deleteUser(User user);
}

@LazySingleton(as: AuthLocalDataSource)
class AuthHiveDataSource implements AuthLocalDataSource {
  final HiveInterface _hive;

  AuthHiveDataSource(
    this._hive,
  );

  @override
  Future<void> saveUser(User user) async {
    Logger.d('save user: $user');
    try {
      final box = _hive.box<User>('users');
      await box.put(user, user);
    } on Exception catch (e) {
      Logger.e(e.toString());
      throw AuthException.memoryException();
    }
  }

  @override
  Future<User> getUser() async {
    Logger.d('get user');
    try {
      final box = _hive.box<User>('users');
      return box.values.first;
    } on Exception catch (e) {
      Logger.e(e.toString());
      throw AuthException.memoryException();
    }
  }

  @override
  Future<void> editUser(User newUser) async {
    Logger.d('edit user: $newUser');
    try {
      final box = _hive.box<User>('users');
      await box.put(newUser.uniqueId, newUser);
    } on Exception catch (e) {
      Logger.e(e.toString());
      throw AuthException.memoryException();
    }
  }

  @override
  Future<void> deleteUser(User user) async {
    Logger.d('delete user: $user');
    try {
      final box = _hive.box<User>('users');
      await box.delete(user.uniqueId);
    } on Exception catch (e) {
      Logger.e(e.toString());
      throw AuthException.memoryException();
    }
  }
}
