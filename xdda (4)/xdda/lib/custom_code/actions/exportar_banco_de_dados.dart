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
import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<void> exportarBancoDeDados(BuildContext context) async {
  try {
    final dbPath = await getDatabasesPath();
    final source = File(join(dbPath, "FormularioOffline.db"));

    final Directory? downloadsDir = await getExternalStorageDirectory();
    final String destino = "${downloadsDir!.path}/FormularioOffline_Backup.db";

    await source.copy(destino);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Text("✅ Banco exportado para a pasta Downloads!")),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("❌ Erro: ${e.toString()}")),
    );
  }
}
