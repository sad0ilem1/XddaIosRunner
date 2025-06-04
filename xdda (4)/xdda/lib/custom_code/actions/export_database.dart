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
import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<void> exportDatabase(BuildContext context) async {
  try {
    // 1. Caminho original
    final dbPath = await getDatabasesPath();
    final sourcePath = join(dbPath, "FormularioOfflineAtualizado.db");
    print("🔍 Origem: $sourcePath");

    // 2. Verifica se existe
    if (!await File(sourcePath).exists()) {
      throw Exception("Arquivo não encontrado!");
    }

    // 3. Caminho de destino
    final Directory? downloadsDir = await getExternalStorageDirectory();
    final String destPath = "${downloadsDir!.path}/FormularioOffline_Backup.db";
    print("🎯 Destino: $destPath");

    // 4. Copia o arquivo
    await File(sourcePath).copy(destPath);

    // 5. Confirmação
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("✅ Banco exportado para: $destPath"),
        duration: Duration(seconds: 5),
      ),
    );
  } catch (e) {
    print("❌ Erro catastrófico: ${e.toString()}");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("🔥 Falha na exportação: ${e.toString()}"),
        backgroundColor: Colors.red,
      ),
    );
  }
}
