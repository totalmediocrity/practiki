import 'dart:io';
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
   final int _version = 1;

  Future<void> init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    _pathDb = join(_appDocumentDirectory.path, 'scladochekkk.db');
    

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {

    sqfliteFfiInit();
       var db = await databaseFactoryFfi.openDatabase(_pathDb, options: OpenDatabaseOptions(
        version: _version,
        onUpgrade: (db,oldVersion,newVersion)=> onUpdateTable(db),
        
        onCreate: (db, version) async {
        await onCreateTable(db);
      }
        
        ));
       
    } 
    else {
      db = await openDatabase(_pathDb, version: _version,
      
      onUpgrade:(db,oldVersion,newVersion)=> onUpdateTable(db),
    
          onCreate: (db, version) async {
        await onCreateTable(db);
      });
    }
    
  }

  Future<void> onCreateTable(Database db) async {

    for (var i=0; i< DataBaseRequest.tableList.length;i++)
    {
      await db.execute(DataBaseRequest.createTableList[i]);
    }
    db.execute('PRAGMA foreign_keys=on');
    await onInitTable(db); 
     }

  Future<void> onInitTable(Database db) async {
    try {

      db.insert(DataBaseRequest.tableRole, Role(role: 'Администратор').toMap());
      db.insert(DataBaseRequest.tableRole, Role(role: 'Товаровед').toMap());
      db.insert(DataBaseRequest.tableRole, Role(role: 'Грузчик').toMap());
      db.insert(DataBaseRequest.tableRole, Role(role: 'Сортировщик').toMap());
      

    } on DatabaseException catch (e) {}
  }

 Future<void>  onUpdateTable(Database db)async {

var tables=await db.rawQuery('Select name FROM sqlite_master');
for (var table in DataBaseRequest.tableList)
{
  if (tables.contains(table))
  {
    await db.execute(DataBaseRequest.deleteTable(table));
  }
}
for (var i=0; i< DataBaseRequest.tableList.length;i++)
    {
      await db.execute(DataBaseRequest.createTableList[i]);
    }
  }
}