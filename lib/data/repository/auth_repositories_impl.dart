import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:practiki/common/data_base_request.dart';
import 'package:practiki/core/db/data_base_helper.dart';
import 'package:practiki/data/model/dolj.dart';
import 'package:practiki/data/model/user.dart';
import 'package:practiki/domain/entity/dolj_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';
import 'package:practiki/domain/repository/auth_repositories.dart';
import 'package:sqflite/sqflite.dart';

class AuthRepositoriImpl implements AuthRepositories {
  final db = DataBaseHelper.instance.db;

  String table = DataBaseRequest.tableUsers;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    try {
      var user = await db.query(
        table,
        where: 'login = ?',
        whereArgs: [login],
      );

      if (user.isEmpty) {
        return const Left('Пользователя нет');
      }

    if (user.first['password'] !=
          md5.convert(utf8.encode(password)).toString()) {
        return const Left('Неверный пароль');
      }

      return Right(RoleEnum.values[(user.first['id_role'] as int) - 1]);
    } on DatabaseException catch (error) {
      return Left(error.result.toString());
    }
  }

  @override
  Future<Either<String, bool>> singUp(String login, String password) async {
    try {
      db.insert(
          table,
          User(
            login: login, 
            password: md5.convert(utf8.encode(password)).toString(),
            id_role: RoleEnum.user.id, 
            name: 'name',
            surname: 'surname',
            patron: 'patron',
          )
              .toMap()
     );
      return Right(true);
    } on DatabaseException catch (error) {
      return Left('Ошибка');
    }
  }
}
