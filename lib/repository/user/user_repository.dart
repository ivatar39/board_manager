import 'package:board_manager/data/auth/data_sources/auth_local_data_source.dart';
import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/repository/user/user_failure.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserRepository {
  final AuthLocalDataSource _authLocalDataSource;

  UserRepository(
    this._authLocalDataSource,
  );

  Future<User> getCurrentAuthorisedUser() async {
    final user = await _authLocalDataSource.getAuthorisedUser();
    if (user == null) {
      throw const UserFailure.userNotAuthorized();
    }
    return user;
  }

  List<String> getAllUserNames() {
    return _authLocalDataSource.getAllUsers().map((e) => e.name).toList();
  }
}
