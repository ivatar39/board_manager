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

  /// returns first authorized [User] from local source
  ///
  /// may throw [AuthException]
  Future<User?> getAuthorisedUser();

  /// edits [User] in local source
  ///
  /// may throw [AuthException]
  Future<void> editUser(User newUser);

  /// deletes [User] from local source
  ///
  /// may throw [AuthException]
  Future<void> deleteUser(User user);

  /// returns true if any [User] is in local source
  ///
  /// may throw [AuthException]
  Future<bool> doesAnyUserExist();
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
      await box.put(user.uniqueId, user);
    } on Exception catch (e) {
      Logger.e(e.toString());
      throw AuthException.memoryException();
    }
  }

  @override
  Future<User?> getAuthorisedUser() async {
    Logger.d('get user');
    try {
      final box = _hive.box<User>('users');
      final user = box.values.firstWhere((element) => element.isAuthorized);
      Logger.d(user.toString());
      return user;
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

  @override
  Future<bool> doesAnyUserExist() async {
    Logger.d('does Any User Exist');
    try {
      final box = _hive.box<User>('users');
      final doExist = box.isNotEmpty;
      Logger.d('doExist: $doExist');
      return doExist;
    } on Exception catch (e) {
      Logger.e(e.toString());
      throw AuthException.memoryException();
    }
  }
}
