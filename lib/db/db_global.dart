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

  }
}
