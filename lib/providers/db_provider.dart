import 'dart:io';
import 'package:flutter_app/models/flutter_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();
  static Database _database;
  

  Future<Database> get database async {
    if(_database != null) return _database;

    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'FlutterAppDB.db');
    final String nTable  = 'products';

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE $nTable('
            'id INTEGER PRIMARY KEY,'
            'nombre TEXT NOT NULL'
          ')'
        );

        // Productos
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [1,  'Frutas']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [2,  'Cereal']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [3,  'Leche']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [4,  'Verduras']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [5,  'Pan tostado']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [6,  'Servilletas']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [7,  'Cafe']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [8,  'Galletas']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [9,  'Jabón']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [10, 'Aceite']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [11, 'Yogur']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [12, 'Pastas']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [13, 'Agua']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [14, 'Azucar']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [15, 'Pollo']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [16, 'Mayonesa']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [17, 'Huevos']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [18, 'Papel higienico']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [19, 'Arroz']);
        await db.rawInsert('INSERT INTO $nTable (id, nombre) VALUES (?, ?) ', [20, 'Refresco']);
      }
    );
  }

  // obtener todos los registros
  Future<List<FlutterModel>> getAllProducts() async {
    final db = await database;
    List<Map<String, dynamic>> results = await db.query('products');
    return results.map((map) => FlutterModel.fromJson(map)).toList();
  }

  Future close() async {
    final db = await database;
    db.close();
  }
}