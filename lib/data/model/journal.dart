import 'package:practiki/domain/entity/user_entity.dart';
import 'package:practiki/domain/entity/item_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';

import '../../domain/entity/journal_entity.dart';

class Journal extends JournalEntity{
  late int id;
  final int cost;
  final String dOfJ;
  final int id_item;
  final int id_users;

  Journal(
      { required this.cost,
        required this.dOfJ,
        required this.id_item,
        required this.id_users, })
      : super(
    cost : cost,
    dOfJ : dOfJ,
    id_item : id_item,
    id_users : id_users,
  );

  Map<String, dynamic> toMap() {
    return {
      'cost': cost,
      'dOfJ': dOfJ,
      'id_item': id_item,
      'id_users': id_users,

    };
  }

  factory Journal.toFromMap(Map<String, dynamic> json) {
    return Journal(
      cost: json['cost'],
      dOfJ: json['dOfJ'],
      id_item: json['id_item'],
      id_users: json['id_users'],
    );
  }

}