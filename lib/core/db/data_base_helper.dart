import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:practiki/common/data_base_request.dart';
import 'package:practiki/data/model/role.dart';
import 'package:practiki/data/model/user.dart';
import 'package:practiki/data/model/country.dart';
import 'package:practiki/data/model/customer.dart';
import 'package:practiki/data/model/dolj.dart';
import 'package:practiki/data/model/item.dart';
import 'package:practiki/data/model/journal.dart';
import 'package:practiki/data/model/provider.dart';
import 'package:practiki/data/model/run.dart';
import 'package:practiki/domain/entity/role_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instance();

  DataBaseHelper._instance();

  late final Directory _appDocumentDirectory;
  late final String _pathDb;
  late final Database db;
  int _version = 1;

  Future<void> init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    _pathDb = join(_appDocumentDirectory.path, 'sclad.db');

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      sqfliteFfiInit();
      db = await databaseFactoryFfi.openDatabase(_pathDb,
          options: OpenDatabaseOptions(
              version: _version,
              onCreate: (dataBase, version) async {
                await onCreateTable(dataBase);
              },
              onUpgrade: (dataBase, oldVersion, newVersion) async {
                await onUpdateTable(dataBase);
              }));
    } else {
      db = await openDatabase(_pathDb, version: _version,
          onCreate: (dataBase, version) async {
        await onCreateTable(dataBase);
      }, onUpgrade: (dataBase, oldVersion, newVersion) async {
        await onUpdateTable(dataBase);
      });
    }
    //return Future.value(false);
  }

   Future<void> onUpdateTable(Database db) async {
    var tables = await db.rawQuery("SELECT name FROM sqlite_master");

    for (var table in DataBaseRequest.tableList.reversed) {
      if (tables.where((element) => element['name'] == table).isNotEmpty) {
        await db.execute(DataBaseRequest.deleteTable(table));
      }
    }

    for (var i = 0; i < DataBaseRequest.tableList.length; i++) {
      await db.execute(DataBaseRequest.createTableList[i]);
    }
    await onInitTable(db);
  }

  Future<void> onCreateTable(Database db) async {
    for (var i = 0; i < DataBaseRequest.tableList.length; i++) {
      await db.execute(DataBaseRequest.createTableList[i]);
    }
    db.execute('PRAGMA foreign_keys=on');
    await onInitTable(db);
  }


    Future<void> onDropDataBase() async {
    db.close();
    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      databaseFactoryFfi.deleteDatabase(db.path);
    } else {
      deleteDatabase(_pathDb);
    }
  }

  Future<void> onInitTable(Database db) async {
    try {

      db.insert(DataBaseRequest.tableRole, Role(role: 'Администратор').toMap());
      db.insert(DataBaseRequest.tableRole, Role(role: 'Товаровед').toMap());
      db.insert(DataBaseRequest.tableRole, Role(role: 'Грузчик').toMap());
      db.insert(DataBaseRequest.tableRole, Role(role: 'Сортировщик').toMap());

      //  db.insert(DataBaseRequest.tableDolj, Dolj(oclad:100000,dolj_name: 'Администратор').toMap());
      // db.insert(DataBaseRequest.tableDolj, Dolj(oclad:80000,dolj_name: 'Товаровед').toMap());
      // db.insert(DataBaseRequest.tableDolj, Dolj(oclad:60000,dolj_name: 'Грузчик').toMap());
      // db.insert(DataBaseRequest.tableDolj, Dolj(oclad:40000,dolj_name: 'Сортировщик').toMap());

       db.insert(DataBaseRequest.tableUsers, User(name:'Акакий',surname: 'Веррийский',patron: 'Бабиашвили',login: 'administr',password: md5.convert(utf8.encode('admin1010')).toString(),id_role: RoleEnum.admin.id,).toMap());
       db.insert(DataBaseRequest.tableUsers, User(name:'Гурген',surname: 'Волк',patron: 'Зайцев',login: 'user2020',password: md5.convert(utf8.encode('user2020')).toString(),id_role: RoleEnum.user.id,).toMap());

      // db.insert(DataBaseRequest.tableCountry, Country(country_name: 'Египет').toMap());
      // db.insert(DataBaseRequest.tableCountry, Country(country_name: 'Джибути').toMap());
      // db.insert(DataBaseRequest.tableCountry, Country(country_name: 'Гватемала').toMap());
      // db.insert(DataBaseRequest.tableCountry, Country(country_name: 'Норфок').toMap());

      // db.insert(DataBaseRequest.tableProvider, Provider(provider_name: 'ООО Сделай сам').toMap());
      // db.insert(DataBaseRequest.tableProvider, Provider(provider_name: 'Самообманка').toMap());
      // db.insert(DataBaseRequest.tableProvider, Provider(provider_name: 'Фукородани').toMap());
      // db.insert(DataBaseRequest.tableProvider, Provider(provider_name: 'ООО Пых-пых').toMap());

      // db.insert(DataBaseRequest.tableRun, Run(run_number: 12, provider_id:1).toMap());
      // db.insert(DataBaseRequest.tableRun, Run(run_number: 10, provider_id:2).toMap());
      // db.insert(DataBaseRequest.tableRun, Run(run_number: 1, provider_id:3).toMap());
      // db.insert(DataBaseRequest.tableRun, Run(run_number: 20, provider_id: 4).toMap());

      // db.insert(DataBaseRequest.tableCustomer, Customer(order_name: '21', cus_name:'Апполон',cus_surname:'Викторович',cus_patron: 'Веселов',cus_phone: '7-910-295-33-79').toMap());

      // db.insert(DataBaseRequest.tableItem, Iteam(order_item: 'Печенье слоеное "Вкусно и весело"', lots: 6, customer_id: 1, country_id: 2,run_id: 2).toMap());

      //  db.insert(DataBaseRequest.tableJournal, Journal(cost: 250, dOfJ: '11-11-2022',item_id: 1,users_id: 2).toMap());

    } on DatabaseException catch (e) {
      
    }
  }

}
