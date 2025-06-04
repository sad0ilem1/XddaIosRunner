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

// Importações necessárias adicionadas
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> converterCoordenadasEmEndereco(
  String latLng, // formato: "lat: 12.34, lng: 56.78"
  String apiKey,
) async {
  try {
    final regex = RegExp(r'lat:\s*([-\d.]+),\s*lng:\s*([-\d.]+)');
    final match = regex.firstMatch(latLng);

    if (match == null) return 'Coordenadas inválidas';

    final latitude = match.group(1);
    final longitude = match.group(2);

    final url = Uri.parse(
      'https://api.opencagedata.com/geocode/v1/json?q=$latitude+$longitude&key=1b89e14c9efd4b45af2c6860515f4b32',
    );

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final results = data['results'];
      if (results != null && results.isNotEmpty) {
        return results[0]['formatted'] ?? 'Endereço não encontrado';
      }
      return 'Endereço não encontrado';
    } else {
      return 'Erro na API: ${response.statusCode}';
    }
  } catch (e) {
    return 'Por favor Digite Manualmente Seu endereço: ';

    //return 'Erro ao converter coordenadas: $e';
  }
}
