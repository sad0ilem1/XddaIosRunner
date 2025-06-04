import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETINSPECAOLOCAL
Future<List<GetInspecaoLocalRow>> performGetInspecaoLocal(
  Database database,
) {
  final query = '''
SELECT * FROM inspecoes WHERE isSynced = 0;
''';
  return _readQuery(database, query, (d) => GetInspecaoLocalRow(d));
}

class GetInspecaoLocalRow extends SqliteRow {
  GetInspecaoLocalRow(Map<String, dynamic> data) : super(data);

  int get id => data['id'] as int;
  String? get txfResponsavel => data['txfResponsavel'] as String?;
  String? get txfData => data['txfData'] as String?;
  String? get txfLocal => data['txfLocal'] as String?;
  String? get tipoInspecao1 => data['tipoInspecao1'] as String?;
  String? get equipamento1 => data['equipamento1'] as String?;
  int? get impeditivo1 => data['impeditivo1'] as int?;
  String? get motivo1 => data['motivo1'] as String?;
  String? get imagemUrl1 => data['imagemUrl1'] as String?;
  String? get descricaoFoto1 => data['descricaoFoto1'] as String?;
  String? get descricaoAcao1 => data['descricaoAcao1'] as String?;
  String? get prazo1 => data['prazo1'] as String?;
  String? get status1 => data['status1'] as String?;
  String? get tipoInspecao2 => data['tipoInspecao2'] as String?;
  bool? get isSynced => data['isSynced'] as bool?;
  String? get equipamento2 => data['equipamento2'] as String?;
  int? get impeditivo2 => data['impeditivo2'] as int?;
  String? get motivo2 => data['motivo2'] as String?;
  String? get imagemUrl2 => data['imagemUrl2'] as String?;
  String? get descricaoFoto2 => data['descricaoFoto2'] as String?;
  String? get descricaoAcao2 => data['descricaoAcao2'] as String?;
  String? get prazo2 => data['prazo2'] as String?;
  String? get status2 => data['status2'] as String?;
  String? get tipoInspecao3 => data['tipoInspecao3'] as String?;
  String? get equipamento3 => data['equipamento3'] as String?;
  String? get motivo3 => data['motivo3'] as String?;
  String? get descricaoFoto3 => data['descricaoFoto3'] as String?;
  String? get descricaoAcao3 => data['descricaoAcao3'] as String?;
  String? get prazo3 => data['prazo3'] as String?;
  String? get status3 => data['status3'] as String?;
  String? get tipoInspecao4 => data['tipoInspecao4'] as String?;
  String? get equipamento4 => data['equipamento4'] as String?;
  String? get motivo4 => data['motivo4'] as String?;
  String? get descricaoFoto4 => data['descricaoFoto4'] as String?;
  String? get descricaoAcao4 => data['descricaoAcao4'] as String?;
  String? get prazo4 => data['prazo4'] as String?;
  String? get status4 => data['status4'] as String?;
  int? get impeditivo3 => data['impeditivo3'] as int?;
  int? get impeditivo4 => data['impeditivo4'] as int?;
  String? get imagemUrl3 => data['imagemUrl3'] as String?;
  String? get imagemUrl4 => data['imagemUrl4'] as String?;
  String? get tipoInspecao5 => data['tipoInspecao5'] as String?;
  String? get equipamento5 => data['equipamento5'] as String?;
  String? get motivo5 => data['motivo5'] as String?;
  String? get descricaoFoto5 => data['descricaoFoto5'] as String?;
  String? get descricaoAcao5 => data['descricaoAcao5'] as String?;
  String? get prazo5 => data['prazo5'] as String?;
  String? get status5 => data['status5'] as String?;
  String? get tipoInspecao6 => data['tipoInspecao6'] as String?;
  String? get equipamento6 => data['equipamento6'] as String?;
  String? get motivo6 => data['motivo6'] as String?;
  String? get descricaoFoto6 => data['descricaoFoto6'] as String?;
  String? get descricaoAcao6 => data['descricaoAcao6'] as String?;
  String? get prazo6 => data['prazo6'] as String?;
  String? get status6 => data['status6'] as String?;
  int? get impeditivo5 => data['impeditivo5'] as int?;
  int? get impeditivo6 => data['impeditivo6'] as int?;
  String? get imagemUrl5 => data['imagemUrl5'] as String?;
  String? get imagemUrl6 => data['imagemUrl6'] as String?;
  String? get tipoInspecao7 => data['tipoInspecao7'] as String?;
  String? get equipamento7 => data['equipamento7'] as String?;
  String? get motivo7 => data['motivo7'] as String?;
  String? get descricaoFoto7 => data['descricaoFoto7'] as String?;
  String? get descricaoAcao7 => data['descricaoAcao7'] as String?;
  String? get prazo7 => data['prazo7'] as String?;
  String? get status7 => data['status7'] as String?;
  int? get impeditivo7 => data['impeditivo7'] as int?;
  String? get imagemUrl7 => data['imagemUrl7'] as String?;
  String? get tipoInspecao8 => data['tipoInspecao8'] as String?;
  String? get equipamento8 => data['equipamento8'] as String?;
  String? get motivo8 => data['motivo8'] as String?;
  String? get descricaoFoto8 => data['descricaoFoto8'] as String?;
  String? get descricaoAcao8 => data['descricaoAcao8'] as String?;
  String? get prazo8 => data['prazo8'] as String?;
  String? get status8 => data['status8'] as String?;
  int? get impeditivo8 => data['impeditivo8'] as int?;
  int? get imagemUrl8 => data['imagemUrl8'] as int?;
  String? get tipoInspecao9 => data['tipoInspecao9'] as String?;
  String? get equipamento9 => data['equipamento9'] as String?;
  String? get motivo9 => data['motivo9'] as String?;
  String? get descricaoFoto9 => data['descricaoFoto9'] as String?;
  String? get descricaoAcao9 => data['descricaoAcao9'] as String?;
  String? get prazo9 => data['prazo9'] as String?;
  String? get status9 => data['status9'] as String?;
  String? get tipoInspecao10 => data['tipoInspecao10'] as String?;
  String? get equipamento10 => data['equipamento10'] as String?;
  String? get motivo10 => data['motivo10'] as String?;
  String? get descricaoFoto10 => data['descricaoFoto10'] as String?;
  String? get descricaoAcao10 => data['descricaoAcao10'] as String?;
  String? get prazo10 => data['prazo10'] as String?;
  String? get status10 => data['status10'] as String?;
  int? get impeditivo9 => data['impeditivo9'] as int?;
  String? get imagemUrl9 => data['imagemUrl9'] as String?;
  int? get impeditivo10 => data['impeditivo10'] as int?;
  String? get imagemUrl10 => data['imagemUrl10'] as String?;
  int? get ncampos => data['ncampos'] as int?;
  String? get txfCliente => data['txfCliente'] as String?;
}

/// END GETINSPECAOLOCAL
