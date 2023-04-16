import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:task8/models/user.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();

  static var instance;

  factory DatabaseHelper() => _instance;

  final String tableUser = 'userTable';
  final String columnId = 'id';
  final String columnFirstName = 'firstName';
  final String columnLastName = 'lastName';
  final String columnEmail = 'email';
  final String columnPassword = 'password';

  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  Future<Database> initDb() async {
    final String databasePath = await getDatabasesPath();
    final String path = join(databasePath, 'user.db');
    final Future<Database> database = openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
            CREATE TABLE $tableUser (
              $columnId INTEGER PRIMARY KEY,
              $columnFirstName TEXT NOT NULL,
              $columnLastName TEXT NOT NULL,
              $columnEmail TEXT NOT NULL,
              $columnPassword TEXT NOT NULL)
          ''');
    });
    return database;
  }

  Future<int> saveUser(User user) async {
    final Database dbClient = await db as Database;
    final int result = await dbClient.insert(tableUser, user.toMap());
    return result;
  }

  Future<List<User>> getAllUsers() async {
    final Database dbClient = await db as Database;
    final List<Map<String, dynamic>> maps = await dbClient.query(tableUser);
    final List<User> users = [];
    if (maps.isNotEmpty) {
      for (final Map<String, dynamic> map in maps) {
        users.add(User.fromMap(map));
      }
    }
    return users;
  }

  getUsers() {}
}
