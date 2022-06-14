import 'package:board_manager/data/auth/user/user.dart';
import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/repository/user/user_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:elementary/elementary.dart';

class ProfileModel extends ElementaryModel {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final AppRouter _router;

  AuthRepository get authRepository => _authRepository;
  AppRouter get router => _router;

  ProfileModel(this._authRepository, this._userRepository, this._router);

  Future<User> getCurrentAuthorisedUser() async {
    return _userRepository.getCurrentAuthorisedUser();
  }
}
