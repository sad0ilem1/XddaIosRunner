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

import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkConnection2() async {
  final results = await Connectivity().checkConnectivity();

  // Se for uma lista, pega o primeiro valor disponível
  final result = results is List<ConnectivityResult> && results.isNotEmpty
      ? results.first
      : results;

  print('Tipo de conexão: $result');
  return result != ConnectivityResult.none;
}
