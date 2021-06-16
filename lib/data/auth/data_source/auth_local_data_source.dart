import 'package:board_manager/data/auth/exceptions/auth_exception.dart';
import 'package:board_manager/data/auth/user/user.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';

abstract class AuthLocalDataSource {
  /// saves given [User] to local source
  ///
  /// may throw [AuthException]
  Future<void> saveUser(User user);

  /// returns first authorized [User] from local source
  ///
  /// if there are no authorised users, returns null
  Future<User?> getAuthorisedUser();

  /// edits [User] in local source
  ///
  /// may throw [AuthException]
  Future<void> editUser(User user);

  /// deletes [User] from local source
  ///
  /// may throw [AuthException]
  Future<void> deleteUser(User user);

  /// returns true if any [User] is in local source
  ///
  ///
  Future<bool> doesAnyUserExist();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthHiveDataSource implements AuthLocalDataSource {
  final Box<User> _userBox;

  AuthHiveDataSource(
    this._userBox,
  );

  @override
  Future<void> saveUser(User user) async {
    await performActionOnUserBox(
      user,
      (user) async {
        await _userBox.put(user.uniqueId, user);
      },
    );
  }

  @override
  Future<User?> getAuthorisedUser() async {
    for (final user in _userBox.values) {
      if (user.isAuthorized) {
        return user;
      }
    }
    return null;
  }

  @override
  Future<void> editUser(User user) async {
    await performActionOnUserBox(
      user,
      (user) async {
        await _userBox.put(user.uniqueId, user);
      },
    );
  }

  @override
  Future<void> deleteUser(User user) async {
    await performActionOnUserBox(
      user,
      (user) async {
        await _userBox.delete(user.uniqueId);
      },
    );
  }

  @override
  Future<bool> doesAnyUserExist() async {
    final doExist = _userBox.isNotEmpty;
    return doExist;
  }

  Future<void> performActionOnUserBox(
    User user,
    Future<void> Function(User user) forwardedCall,
  ) async {
    try {
      return await forwardedCall(user);
    } on Exception catch (e) {
      Logger.e(e.toString());
      throw AuthException.memoryException();
    }
  }
}
