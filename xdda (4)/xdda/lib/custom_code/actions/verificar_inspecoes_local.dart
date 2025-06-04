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

Future<void> verificarInspecoesLocal(BuildContext context) async {
  try {
    final Database db = await openDatabase(
      join(await getDatabasesPath(), "FormularioOffline.db"),
    );

    // Busca APENAS os 3 campos
    final List<Map> registros = await db.rawQuery('''
      SELECT txfResponsavel
      FROM inspecoes 
      WHERE isSynced = 0
    ''');

    await db.close();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("📊 Registros offline: ${registros.length}"),
      ),
    );

    // Log completo para debug
    print("REGISTROS: ${registros.toString()}");
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("❌ Erro ao verificar: ${e.toString()}"),
      ),
    );
  }
}
