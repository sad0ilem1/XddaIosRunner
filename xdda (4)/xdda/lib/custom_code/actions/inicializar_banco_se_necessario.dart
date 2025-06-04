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

import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<void> inicializarBancoSeNecessario() async {
  final dbPath = await getDatabasesPath();
  final fullPath = join(dbPath, 'FormularioOfflineAtualizado.db');

  final exists = await File(fullPath).exists();

  if (!exists) {
    try {
      final data =
          await rootBundle.load('assets/FormularioOfflineAtualizado.db');
      final bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(fullPath).writeAsBytes(bytes);
      print("✅ Banco copiado com sucesso: $fullPath");
    } catch (e) {
      print("❌ Erro ao copiar banco: $e");
    }
  } else {
    print("📂 Banco já existe: $fullPath");
  }
}
