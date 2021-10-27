import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBGlobal {
  static Database? _myDatabase;
  static final DBGlobal db = DBGlobal._();
  DBGlobal._();

  //Obtener o crear la base de datos

  Future<Database?> get getDatabase async {
    if (_myDatabase != null) return _myDatabase;
    _myDatabase = await initDB();
    return _myDatabase;
  }

  //Creación de la base de datos y las tablas

  initDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentDirectory.path, "BandDB.db");
    return openDatabase(
      path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db, int version){
        db.execute("CREATE TABLE Band(id INTEGER PRIMARY KEY AUTOINCREMENT, bandName TEXT, status TEXT,favorite TEXT)");
        
      }
    );

  }
}
