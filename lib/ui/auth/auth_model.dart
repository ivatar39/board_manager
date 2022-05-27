import 'package:board_manager/repository/auth/auth_repository.dart';
import 'package:board_manager/ui/router/app_router.gr.dart';
import 'package:elementary/elementary.dart';

class AuthModel extends ElementaryModel {
  final AuthRepository _authRepository;
  final AppRouter _router;

  AuthRepository get authRepository => _authRepository;
  AppRouter get router => _router;

  AuthModel(this._authRepository, this._router);
}
