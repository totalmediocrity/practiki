import 'package:practiki/domain/entity/user_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';

import '../../domain/entity/dolj_entity.dart';

class Dolj extends DoljEntity{
  late int id;
  final int oclad;
  final String dolj_name;

  Dolj(
      { required this.oclad,
        required this.dolj_name,})
      : super(
    oclad : oclad,
    dolj_name : dolj_name,
  );

  Map<String, dynamic> toMap() {
    return {
      'oclad': oclad,
      'dolj_name': dolj_name,
    };
  }

  factory Dolj.toFromMap(Map<String, dynamic> json) {
    return Dolj(
      oclad: json['oclad'],
      dolj_name: json['dolj_name'],
    );
  }

}