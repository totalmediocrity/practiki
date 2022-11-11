class ItemEntity{
  late int id;
  final String order_item;
  final int lots;
  final int customer_id;
  final int country_id;
  final int run_id;

  ItemEntity(
      { required this.order_item,
        required this.lots,

        required this.customer_id,
        required this.country_id,
        required this.run_id,});
}

//enum EngineEnum{}