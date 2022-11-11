import 'package:practiki/domain/entity/customer_entity.dart';
import 'package:practiki/domain/entity/item_entity.dart';
import 'package:practiki/domain/entity/journal_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';

import '../../domain/entity/provider_entity.dart';

class Provider extends ProviderEntity{
  late int id;
  final String provider_name;

  Provider(
      { required this.provider_name, })
      : super(
    provider_name : provider_name,
  );

  Map<String, dynamic> toMap() {
    return {
      'country_name': provider_name,
    };
  }

  factory Provider.toFromMap(Map<String, dynamic> json) {
    return Provider(
      provider_name: json['provider_name'],
    );
  }

}
