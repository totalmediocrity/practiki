class CustomerEntity{
  late int id;
  final String order_name;
  final String cus_name;
  final String cus_surname;
  final String cus_patron;
  final String cus_phone;

  CustomerEntity(
      { required this.order_name,
        required this.cus_name,
        required this.cus_surname,
        required this.cus_patron,
        required this.cus_phone,});
}

//enum EngineEnum{}