import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/health_record.dart';

class DatabaseService {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'health_records.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE health_records(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            heartRate INTEGER NOT NULL,
            steps INTEGER NOT NULL,
            timestamp TEXT NOT NULL
          )
        ''');
      },
    );
  }

  Future<void> insertRecord(HealthRecord record) async {
    final db = await database;
    await db.insert('health_records', record.toMap());
  }

  Future<List<HealthRecord>> getRecords() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'health_records',
      orderBy: 'timestamp DESC',
    );

    return List.generate(maps.length, (i) => HealthRecord.fromMap(maps[i]));
  }
}
