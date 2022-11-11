import 'package:practiki/domain/entity/role_entity.dart';

import '../../domain/entity/customer_entity.dart';

class Customer extends CustomerEntity{
  late int id;
  final String order_name;
  final String cus_name;
  final String cus_surname;
  final String cus_patron;
  final String cus_phone;

  Customer(
      { required this.order_name,
        required this.cus_name,
        required this.cus_surname,
        required this.cus_patron,
        required this.cus_phone, })
      : super(
    order_name : order_name,
    cus_name : cus_name,
    cus_surname : cus_surname,
    cus_patron : cus_patron,
    cus_phone : cus_phone,
  );

  Map<String, dynamic> toMap() {
    return {
      'order_name': order_name,
      'cus_name': cus_name,
      'cus_surname': cus_surname,
      'cus_patron': cus_patron,
      'cus_phone': cus_phone,
    };
  }

  factory Customer.toFromMap(Map<String, dynamic> json) {
    return Customer(
      order_name: json['order_name'],
      cus_name: json['cus_name'],
      cus_surname: json['cus_surname'],
      cus_patron: json['cus_patron'],
      cus_phone: json['cus_phone'],
    );
  }

}