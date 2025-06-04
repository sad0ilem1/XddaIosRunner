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

//
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<void> debugSQLite(BuildContext context) async {
  try {
    // 1. Caminho do banco
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "FormularioOfflineAtualizado.db");
    print("📍 Caminho do banco: $path");

    // 2. Abre o banco
    Database db = await openDatabase(path);

    // 3. Consulta os dados
    List<Map> registros = await db.query('inspecoes');
    int total = registros.length;

    // 4. Mostra resultado
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("✅ Banco OK! Registros: $total"),
        duration: Duration(seconds: 3),
      ),
    );

    print(
        "📊 Último registro: ${registros.isNotEmpty ? registros.last : 'Nenhum'}");
  } catch (e) {
    print("❌ Erro grave: ${e.toString()}");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("❌ Falha crítica: ${e.toString()}"),
        backgroundColor: Colors.red,
      ),
    );
  }
}
