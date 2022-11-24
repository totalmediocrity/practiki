class UserEntity{
  late int id;
  final String name;
  final String surname;
  final String patron;
  final String login;
  final String password;
  //
  final int id_role;
//final int id_dolj;

  UserEntity(
{ required this.name,
  required this.surname,
  required this.patron,
  required this.login,
  required this.password,

  required this.id_role,
  });
}

//enum EngineEnum{}