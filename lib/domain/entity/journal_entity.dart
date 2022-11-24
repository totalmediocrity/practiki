class JournalEntity{
  late int id;
  final int cost;
  final String dOfJ;
  final int id_item;
  final int id_users;

  JournalEntity(
      { required this.cost,
        required this.dOfJ,

        required this.id_item,
        required this.id_users,});
}

//enum EngineEnum{}