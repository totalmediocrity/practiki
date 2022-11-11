class UserEntity{
  late int id;
  final String name;
  final String surname;
  final String patron;
  final String login;
  final String password;
  //
  final int role_id;
  final int dolj_id;

  UserEntity(
{ required this.name,
  required this.surname,
  required this.patron,
  required this.login,
  required this.password,

  required this.role_id,
  required this.dolj_id,  });
}

//enum EngineEnum{}