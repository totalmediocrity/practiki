import 'package:practiki/domain/entity/item_entity.dart';
import 'package:practiki/domain/entity/role_entity.dart';
import 'package:practiki/domain/entity/provider_entity.dart';

import '../../domain/entity/run_entity.dart';

class Run extends RunEntity{
  late int id;
  final int run_number;
  final int id_provider;

  Run(
      { required this.run_number,
        required this.id_provider, })
      : super(
    run_number : run_number,
    id_provider : id_provider,
  );

  Map<String, dynamic> toMap() {
    return {
      'run_number': run_number,
      'id_provider': id_provider,
    };
  }

  factory Run.toFromMap(Map<String, dynamic> json) {
    return Run(
      run_number: json['run_number'],
      id_provider: json['id_provider'],
    );
  }

}