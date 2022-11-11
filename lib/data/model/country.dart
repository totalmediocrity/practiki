import 'package:practiki/domain/entity/customer_entity.dart';
import 'package:practiki/domain/entity/item_entity.dart';
import 'package:practiki/domain/entity/journal_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';

import '../../domain/entity/country_entity.dart';

class Country extends CountryEntity{
  late int id;
  final String country_name;

  Country(
      { required this.country_name,})
      : super(
    country_name : country_name,
  );

  Map<String, dynamic> toMap() {
    return {
      'country_name': country_name,
    };
  }

  factory Country.toFromMap(Map<String, dynamic> json) {
    return Country(
      country_name: json['country_name'],
    );
  }

}