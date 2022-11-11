class JournalEntity{
  late int id;
  final int cost;
  final String dOfJ;
  final int item_id;
  final int users_id;

  JournalEntity(
      { required this.cost,
        required this.dOfJ,

        required this.item_id,
        required this.users_id,});
}

//enum EngineEnum{}