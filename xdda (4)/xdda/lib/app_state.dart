import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _txfData = prefs.getString('ff_txfData') ?? _txfData;
    });
    _safeInit(() {
      _localizacaoAtual =
          prefs.getString('ff_localizacaoAtual') ?? _localizacaoAtual;
    });
    _safeInit(() {
      _UID = prefs.getString('ff_UID') ?? _UID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _numCamposVisiveis = 1;
  int get numCamposVisiveis => _numCamposVisiveis;
  set numCamposVisiveis(int value) {
    _numCamposVisiveis = value;
  }

  String _txfData = '';
  String get txfData => _txfData;
  set txfData(String value) {
    _txfData = value;
    prefs.setString('ff_txfData', value);
  }

  String _localizacaoAtual = '';
  String get localizacaoAtual => _localizacaoAtual;
  set localizacaoAtual(String value) {
    _localizacaoAtual = value;
    prefs.setString('ff_localizacaoAtual', value);
  }

  bool _isOnline = true;
  bool get isOnline => _isOnline;
  set isOnline(bool value) {
    _isOnline = value;
  }

  int _impex1 = 0;
  int get impex1 => _impex1;
  set impex1(int value) {
    _impex1 = value;
  }

  int _impedido1 = 0;
  int get impedido1 => _impedido1;
  set impedido1(int value) {
    _impedido1 = value;
  }

  String _UID = '';
  String get UID => _UID;
  set UID(String value) {
    _UID = value;
    prefs.setString('ff_UID', value);
  }

  bool _impedido1bool = false;
  bool get impedido1bool => _impedido1bool;
  set impedido1bool(bool value) {
    _impedido1bool = value;
  }

  int _impedido2 = 0;
  int get impedido2 => _impedido2;
  set impedido2(int value) {
    _impedido2 = value;
  }

  int _impedido3 = 0;
  int get impedido3 => _impedido3;
  set impedido3(int value) {
    _impedido3 = value;
  }

  int _impedido4 = 0;
  int get impedido4 => _impedido4;
  set impedido4(int value) {
    _impedido4 = value;
  }

  int _impedido5 = 0;
  int get impedido5 => _impedido5;
  set impedido5(int value) {
    _impedido5 = value;
  }

  int _impedido6 = 0;
  int get impedido6 => _impedido6;
  set impedido6(int value) {
    _impedido6 = value;
  }

  int _impedido7 = 0;
  int get impedido7 => _impedido7;
  set impedido7(int value) {
    _impedido7 = value;
  }

  int _impedido8 = 0;
  int get impedido8 => _impedido8;
  set impedido8(int value) {
    _impedido8 = value;
  }

  int _impedido9 = 0;
  int get impedido9 => _impedido9;
  set impedido9(int value) {
    _impedido9 = value;
  }

  int _impedido10 = 0;
  int get impedido10 => _impedido10;
  set impedido10(int value) {
    _impedido10 = value;
  }

  int _impedidoUP1 = 0;
  int get impedidoUP1 => _impedidoUP1;
  set impedidoUP1(int value) {
    _impedidoUP1 = value;
  }

  int _impedidoUP2 = 0;
  int get impedidoUP2 => _impedidoUP2;
  set impedidoUP2(int value) {
    _impedidoUP2 = value;
  }

  int _impedidoUP3 = 0;
  int get impedidoUP3 => _impedidoUP3;
  set impedidoUP3(int value) {
    _impedidoUP3 = value;
  }

  int _impedidoUP4 = 0;
  int get impedidoUP4 => _impedidoUP4;
  set impedidoUP4(int value) {
    _impedidoUP4 = value;
  }

  int _impedidoUP5 = 0;
  int get impedidoUP5 => _impedidoUP5;
  set impedidoUP5(int value) {
    _impedidoUP5 = value;
  }

  int _impedidoUP6 = 0;
  int get impedidoUP6 => _impedidoUP6;
  set impedidoUP6(int value) {
    _impedidoUP6 = value;
  }

  int _impedidoUP7 = 0;
  int get impedidoUP7 => _impedidoUP7;
  set impedidoUP7(int value) {
    _impedidoUP7 = value;
  }

  int _impedidoUP8 = 0;
  int get impedidoUP8 => _impedidoUP8;
  set impedidoUP8(int value) {
    _impedidoUP8 = value;
  }

  int _impedidoUP9 = 0;
  int get impedidoUP9 => _impedidoUP9;
  set impedidoUP9(int value) {
    _impedidoUP9 = value;
  }

  int _impedidoUP10 = 0;
  int get impedidoUP10 => _impedidoUP10;
  set impedidoUP10(int value) {
    _impedidoUP10 = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
