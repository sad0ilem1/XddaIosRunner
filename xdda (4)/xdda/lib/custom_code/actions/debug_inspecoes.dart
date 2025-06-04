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

Future<void> debugInspecoes() async {
  final db = await openDatabase(
      join(await getDatabasesPath(), "FormularioOffline.db"));
  final registros = await db.query('inspecoes');
  print(
      "📊 Dados no SQLite: $registros"); // Verifique se os valores estão corretos
  await db.close();
}
