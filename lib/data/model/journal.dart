import 'package:practiki/domain/entity/user_entity.dart';
import 'package:practiki/domain/entity/item_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';

import '../../domain/entity/journal_entity.dart';

class Journal extends JournalEntity{
  late int id;
  final int cost;
  final String dOfJ;
  final int item_id;
  final int users_id;

  Journal(
      { required this.cost,
        required this.dOfJ,
        required this.item_id,
        required this.users_id, })
      : super(
    cost : cost,
    dOfJ : dOfJ,
    item_id : item_id,
    users_id : users_id,
  );

  Map<String, dynamic> toMap() {
    return {
      'cost': cost,
      'dOfJ': dOfJ,
      'item_id': item_id,
      'users_id': users_id,

    };
  }

  factory Journal.toFromMap(Map<String, dynamic> json) {
    return Journal(
      cost: json['cost'],
      dOfJ: json['dOfJ'],
      item_id: json['item_id'],
      users_id: json['users_id'],
    );
  }

}