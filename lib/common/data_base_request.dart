abstract class DataBaseRequest {
  /// Таблица Роли
  ///
  ///
 // static String deleteTable(String table) => 'DROP TABLE $table';

 // static String deleteTable(String table) => 'DROP TABLE $table';

  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';

  /// Таблица Пользователи
  static const String tableUsers = 'Users';
  /// Таблица Заказчики
  static const String tableCustomer = 'Customer';
   /// Таблица Товар
  static const String tableItem = 'Item';
   /// Таблица Страна производитель
  static const String tableCountry = 'Country';
   /// Таблица Партия товара
  static const String tableRun= 'Run';
   /// Таблица Поставщик
  static const String tableProvider = 'Provider';
   /// Таблица Журнал продаж
  static const String tableJournal = 'Journal';
   /// Таблица Должность
  static const String tableDolj = 'Dolj';


  static const List<String> tableList = [
      tableRole,
      tableUsers,
      tableCustomer,
      tableItem,
      tableCountry,
      tableRun,
      tableProvider,
      tableJournal,
      tableDolj
  ];

  static const List<String> createTableList = [
    _createTableRole,
    _createTableUsers,
    _createTableCustomer,
    _createTableItem,
    _createTableCountry,
    _createTableRun,
    _createTableProvider,
    _createTableJournal,
    _createTableDolj
  ];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';
  
  /// Запрос для создания таблицы Dolj
  static const String _createTableDolj =
      'CREATE TABLE "$tableDolj" ("id" INTEGER,"oclad" TEXT NOT NULL,"dolj_name" TEXT NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id"	INTEGER,"name" TEXT NOT NULL ,"surname" TEXT NOT NULL ,"patron" TEXT NULL,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL,"id_role" INTEGER,"id_dolj" INTEGER,PRIMARY KEY("id" AUTOINCREMENT),FOREIGN KEY("id_role") REFERENCES "Role"("id")';

  /// Запрос для создания таблицы Country
  static const String _createTableCountry =
      'CREATE TABLE "$tableCountry" ("id" INTEGER,"country_name" TEXT NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Provider
  static const String _createTableProvider =
      'CREATE TABLE "$tableProvider" ("id" INTEGER,"provider_name" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Run
  static const String _createTableRun =
      'CREATE TABLE "$tableRun" ("id" INTEGER,"run_number" TEXT NOT NULL ,"id_provider" INTEGER,PRIMARY KEY("id" AUTOINCREMENT),FOREIGN KEY("id_provider") REFERENCES "Provider"("id") on delete cascade)';

  /// Запрос для создания таблицы Customer
  static const String _createTableCustomer =
      'CREATE TABLE "$tableCustomer" ("id" INTEGER,"order_name" TEXT NOT NULL UNIQUE,"cus_name" TEXT NOT NULL ,"cus_surname" TEXT NOT NULL ,"cus_patron" TEXT NULL,"cus_phone" TEXT NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Item
  static const String _createTableItem =
      'CREATE TABLE "$tableItem" ("id" INTEGER,"order_item" TEXT NOT NULL UNIQUE,"lots" TEXT NOT NULL,"id_customer" INTEGER,"id_country" INTEGER,"id_run" INTEGER,PRIMARY KEY("id" AUTOINCREMENT),FOREIGN KEY("id_customer") REFERENCES "Customer"("id") on delete cascade,FOREIGN KEY("id_country") REFERENCES "Country"("id") on delete cascade,FOREIGN KEY("id_run") REFERENCES "Run"("id") on delete cascade)';

  /// Запрос для создания таблицы Journal
  static const String _createTableJournal =
       'CREATE TABLE "$tableJournal" ("id" INTEGER,"cost" TEXT NOT NULL,"dOfJ" TEXT NOT NULL,"id_item" INTEGER,"id_users" INTEGER,PRIMARY KEY("id" AUTOINCREMENT),FOREIGN KEY("id_item") REFERENCES "Item"("id") on delete cascade,FOREIGN KEY("id_users") REFERENCES "Users"("id") on delete cascade)';

    static String deleteTable(String table) => 'DROP TABLE $table';
}