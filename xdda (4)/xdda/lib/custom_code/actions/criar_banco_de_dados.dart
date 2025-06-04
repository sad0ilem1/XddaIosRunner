// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<void> criarBancoDeDados() async {
  final Database db = await openDatabase(
    join(await getDatabasesPath(), "FormularioOffline.db"),
    onCreate: (db, version) {
      return db.execute('''
        CREATE TABLE IF NOT EXISTS inspecoes (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          responsavel TEXT,
          data TEXT,
          local TEXT,
          isSynced INTEGER DEFAULT 0
        )
      ''');
    },
    version: 1,
  );
  await db.close();
}
