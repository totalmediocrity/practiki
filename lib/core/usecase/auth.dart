import 'package:dartz/dartz.dart';
import 'package:practiki/domain/entity/role_entity.dart';

abstract class AuthUseCases<String, Params> {
  Future<Either<String, RoleEnum>> signIn(Params params);
  Future<Either<String, bool>> signUp(Params params);
}
