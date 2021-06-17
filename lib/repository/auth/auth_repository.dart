import 'package:board_manager/data/auth/data_sources/auth_local_data_source.dart';
import 'package:board_manager/data/auth/exceptions/auth_exception.dart';
import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/repository/auth/auth_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';

@lazySingleton
class AuthRepository {
  final AuthLocalDataSource _localDataSource;

  AuthRepository(this._localDataSource);

  Future<void> registerUser(String name) async {
    try {
      final user = User.create(name: name);
      await _localDataSource.saveUser(user);
    } on AuthException catch (e) {
      Logger.e(e.toString());

      e.map(
        memoryException: (e) => throw const AuthFailure.systemMemoryFailure(),
      );
    }
  }

  Future<bool> isUserAuthorized() async {
    try {
      // Checking if there is any user in data source.
      // If user exists, we check if they're authorized.
      final doesAnyUserExist = await _localDataSource.doesAnyUserExist();

      if (doesAnyUserExist) {
        final user = await _localDataSource.getAuthorisedUser();
        return user != null;
      }
      return false;
    } on AuthException catch (e) {
      Logger.e(e.toString());
      return false;
    }
  }

  Future<void> signOut(User user) async {
    try {
      final signedOutUser = user.copyWith(isAuthorized: false);
      await _localDataSource.saveUser(signedOutUser);
    } on AuthException catch (e) {
      Logger.e(e.toString());
    }
  }
}
