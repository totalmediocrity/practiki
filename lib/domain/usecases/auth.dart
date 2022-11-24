import 'package:dartz/dartz.dart';
import 'package:practiki/core/usecase/auth.dart';
import 'package:practiki/domain/entity/role_entity.dart';
import 'package:practiki/domain/repository/auth_repositories.dart';

class Auth implements AuthUseCases<String, AuthParams> {
  Auth(this._repositories);
  final AuthRepositories _repositories;

  @override
  Future<Either<String, RoleEnum>> signIn(AuthParams params) {
    return _repositories.signIn(params.login, params.password);
  }
  

  @override
  Future<Either<String, bool>> signUp(AuthParams params) {
   return _repositories.singUp(params.login, params.password);
  }

}

class AuthParams {
  final String login;
  final String password;

  AuthParams({
    required this.login,
    required this.password,
  });
}
