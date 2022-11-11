import 'package:practiki/domain/entity/item_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';
import 'package:practiki/domain/entity/provider_entity.dart';

import '../../domain/entity/run_entity.dart';

class Run extends RunEntity{
  late int id;
  final int run_number;
  final int provider_id;

  Run(
      { required this.run_number,
        required this.provider_id, })
      : super(
    run_number : run_number,
    provider_id : provider_id,
  );

  Map<String, dynamic> toMap() {
    return {
      'run_number': run_number,
      'provider_id': provider_id,
    };
  }

  factory Run.toFromMap(Map<String, dynamic> json) {
    return Run(
      run_number: json['run_number'],
      provider_id: json['provider_id'],
    );
  }

}