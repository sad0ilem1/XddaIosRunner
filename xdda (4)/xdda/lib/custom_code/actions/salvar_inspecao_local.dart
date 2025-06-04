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

Future<void> salvarInspecaoLocal(
  BuildContext context,
  String txfResponsavel,
) async {
  try {
    // 1. Abre o banco (o arquivo .db já existe via assets)
    final Database db = await openDatabase(
      join(await getDatabasesPath(), "FormularioOffline.db"),
    );

    // 2. Insere APENAS os 3 campos de teste
    await db.insert(
      'inspecoes',
      {
        'txfResponsavel': txfResponsavel,
        'isSynced': 0,
      },
    );

    // 3. Feedback
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("✅ Salvo no SQLite!"),
      ),
    );
  } catch (e) {
    print("❌ ERRO DETALHADO: ${e.toString()}"); // Log para debug
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("❌ Falha ao salvar: ${e.toString()}"),
      ),
    );
  }
}
