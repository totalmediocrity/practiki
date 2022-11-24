class ItemEntity{
  late int id;
  final String order_item;
  final int lots;
  final int id_customer;
  final int id_country;
  final int id_run;

  ItemEntity(
      { required this.order_item,
        required this.lots,

        required this.id_customer,
        required this.id_country,
        required this.id_run,});
}

//enum EngineEnum{}