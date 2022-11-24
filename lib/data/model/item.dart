import 'package:practiki/domain/entity/role_entity.dart';
import 'package:practiki/domain/entity/user_entity.dart';
import 'package:practiki/domain/entity/journal_entity.dart';
import 'package:practiki/domain/entity/provider_entity.dart';

import '../../domain/entity/item_entity.dart';

class Iteam extends ItemEntity {
  late int id;
  final String order_item;
  final int lots;
  final int id_customer;
  final int id_country;
  final int id_run;

  Iteam({
    required this.order_item,
    required this.lots,
    required this.id_customer,
    required this.id_country,
    required this.id_run,
  }) : super(
          order_item: order_item,
          lots: lots,
          id_customer: id_customer,
          id_country: id_country,
          id_run: id_run,
        );

  Map<String, dynamic> toMap() {
    return {
      'order_item': order_item,
      'lots': lots,
      'id_customer': id_customer,
      'id_country': id_country,
      'id_run': id_run,
    };
  }

  factory Iteam.toFromMap(Map<String, dynamic> json) {
    return Iteam(
      order_item: json['order_item'],
      lots: json['lots'],
      id_customer: json['id_customer'],
      id_country: json['id_country'],
      id_run: json['id_run'],
    );
  }
}
