import 'package:board_manager/data/auth/data_source/auth_local_data_source.dart';
import 'package:board_manager/data/auth/exceptions/auth_exception.dart';
import 'package:board_manager/data/auth/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:surf_logger/surf_logger.dart';

@lazySingleton
class AuthRepository {
  final AuthLocalDataSource _localDataSource;

  AuthRepository(this._localDataSource);

  Future<void> registerUser(User user) async {
    try {
      await _localDataSource.saveUser(user);
    } on AuthException catch (e) {
      Logger.e(e.toString());
    }
  }

  Future<bool> isUserAuthorized() async {
    try {
      final user = await _localDataSource.getUser();
      Logger.d(user.toString());
      return user.isAuthorized;
    } on AuthException catch (e) {
      Logger.e(e.toString());
      return false;
    }
  }
}
