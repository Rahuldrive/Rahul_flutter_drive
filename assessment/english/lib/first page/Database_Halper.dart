import 'package:sqflite/sqflite.dart';

class DatabaseHalper {
  static const int _version = 1;
  static const String _dbname = "Word.db";

  static Future<Database> _getdb() async {
    return openDatabase(json(await getDatabasesPath(), _dbname),
        onCreate: (db, version) async => await db.execute(
            "CREATE TABLE Words(id  INTEGER PRIMARY KEY, word TEXT  NOT NULL, Meaning Of Word TEXT NOT NULL);"),
        version: _version);
  }

  static Future<int> addword(Word word) async {
    final db = await _getdb();
    return await db.insert("Word", word.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateword(Word word) async {
    final db = await _getdb();
    return await db.update("Word", word.toJson(),
        where: "id=?",
        whereArgs: [word.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteword(Word word) async {
    final db = await _getdb();
    return await db.delete(
      "Word",
      where: "Id=?",
      whereArgs: [word.id],
    );
  }

  static Future<List<Word>?> getallWord() async {
    final db = await _getdb();

    final List<Map<String, dynamic>> maps = await db.query("Word");

    if (maps.isEmpty) {
      return null;
    }
    return List.generate(maps.length, (index) => Word.FromJson(maps[index]));
  }
}
