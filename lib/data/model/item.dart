import 'package:practiki/domain/entity/role_entity.dart';
import 'package:practiki/domain/entity/user_entity.dart';
import 'package:practiki/domain/entity/journal_entity.dart';
import 'package:practiki/domain/entity/provider_entity.dart';

import '../../domain/entity/item_entity.dart';

class Iteam extends ItemEntity {
  late int id;
  final String order_item;
  final int lots;
  final int customer_id;
  final int country_id;
  final int run_id;

  Iteam({
    required this.order_item,
    required this.lots,
    required this.customer_id,
    required this.country_id,
    required this.run_id,
  }) : super(
          order_item: order_item,
          lots: lots,
          customer_id: customer_id,
          country_id: country_id,
          run_id: run_id,
        );

  Map<String, dynamic> toMap() {
    return {
      'order_item': order_item,
      'lots': lots,
      'customer_id': customer_id,
      'country_id': country_id,
      'run_id': run_id,
    };
  }

  factory Iteam.toFromMap(Map<String, dynamic> json) {
    return Iteam(
      order_item: json['order_item'],
      lots: json['lots'],
      customer_id: json['customer_id'],
      country_id: json['country_id'],
      run_id: json['run_id'],
    );
  }
}
