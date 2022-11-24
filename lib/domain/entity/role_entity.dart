class RoleEntity {
  late int  id;
  late String role;

  RoleEntity({required this.role});
}

enum RoleEnum { 
  faceless(
    id:0,
    role:'Неизвестный пользователь'
    ),
  admin(
    id:1,
    role:'Администратор'
    ), 
    user(
      id: 2,
      role: 'Клиент',
    );


const RoleEnum( {
  
        required this.id,
        required this.role,
  }
);

final int id;
final String role;

}
