import 'package:practiki/domain/entity/dolj_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';

import '../../domain/entity/user_entity.dart';

class User extends UserEntity{
  late int id;
  final String name;
  final String surname;
  final String patron;
  final String login;
  final String password;
  //
  final int role_id;
  final int dolj_id;

  User(
      { required this.name,
        required this.surname,
        required this.patron,
        required this.login,
        required this.password,

        required this.role_id,
        required this.dolj_id,  })
  : super(
    name : name,
    surname : surname,
    patron : patron,
    login : login,
    password : password,
    role_id : role_id,
    dolj_id : dolj_id,
  );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'patron': patron,
      'login': login,
      'password': password,
      'role_id': role_id,
      'dolj_id': dolj_id,
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      surname: json['surname'],
      patron: json['patron'],
      login: json['login'],
      password: json['password'],
      role_id: json['role_id'],
      dolj_id: json['dolj_id'],
    );
  }

}