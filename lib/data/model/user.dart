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
  final int id_role;


  User(
      { required this.name,
        required this.surname,
        required this.patron,
        required this.login,
        required this.password,

        required this.id_role,
        })
  : super(
    name : name,
    surname : surname,
    patron : patron,
    login : login,
    password : password,
    id_role : id_role,
  );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'patron': patron,
      'login': login,
      'password': password,
      'id_role': id_role,
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      surname: json['surname'],
      patron: json['patron'],
      login: json['login'],
      password: json['password'],
      id_role: RoleEnum.values.firstWhere(
        (element) => element.id == (json['id_role'] as int),).id,
    );
  }

}