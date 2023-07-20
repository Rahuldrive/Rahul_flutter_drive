import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../Model/Note_Models.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbname = "Note.db";

  static Future<Database> _getdb() async {
    return openDatabase(join(await getDatabasesPath(), _dbname),
        onCreate: (db, version) async => await db.execute(
            "CREATE TABLE Notes(id INTEGER PRIMARY KEY, titel TEXT NOT NULL,description TEXT NOT NULL);"),
        version: _version);
  }

  static Future<int> addNote(Note note) async {
    final db = await _getdb();
    return await db.insert("Note", note.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateNote(Note note) async {
    final db = await _getdb();
    return await db.update("Note", note.toJson(),
        where: "id=?",
        whereArgs: [note.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteNote(Note note) async {
    final db = await _getdb();
    return await db.delete(
      "Note",
      where: "Id=?",
      whereArgs: [note.id],
    );
  }

  static Future<List<Note>?> getallNotes() async {
    final db = await _getdb();

    final List<Map<String, dynamic>> maps = await db.query("Notes");

    if (maps.isEmpty) {
      return null;
    }
    return List.generate(maps.length, (index) => Note.fromJson(maps[index]));
  }
}
