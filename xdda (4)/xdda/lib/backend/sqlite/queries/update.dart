import 'package:sqflite/sqflite.dart';

/// BEGIN SETINSPECAOCOMOSINCRONIZADA
Future performSetInspecaoComoSincronizada(
  Database database, {
  int? id,
}) {
  final query = '''
UPDATE inspecoes SET isSynced = 1 WHERE id = ${id};
/*DELETE FROM inspecoes WHERE isSynced = 1;*/

''';
  return database.rawQuery(query);
}

/// END SETINSPECAOCOMOSINCRONIZADA

/// BEGIN INSERIRINSPECAO2
Future performInserirInspecao2(
  Database database, {
  String? txfResponsavel,
  String? txfData,
  String? txfLocal,
  String? tipoInspecao1,
  String? equipamento1,
  bool? impeditivo1,
  String? motivo1,
}) {
  final query = '''
INSERT INTO inspecoes (
  txfResponsavel, txfData, txfLocal,
  tipoInspecao1, equipamento1, impeditivo1, motivo1,
  isSynced
) VALUES (
  '${txfResponsavel}', '${txfData}', '${txfLocal}',
 ' ${tipoInspecao1}',' ${equipamento1}', ${impeditivo1}, '${motivo1}',
  0
);
''';
  return database.rawQuery(query);
}

/// END INSERIRINSPECAO2

/// BEGIN DELETERINSPECAO
Future performDeleterInspecao(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM inspecoes WHERE id = ${id};
''';
  return database.rawQuery(query);
}

/// END DELETERINSPECAO

/// BEGIN UPDATEINSPECOES
Future performUpdateInspecoes(
  Database database, {
  String? txfResponsavel,
  String? txfData,
  int? id,
  String? txfLocal,
  String? tipoInspecao1,
  String? equipamento1,
  String? motivo1,
  String? descricaoFoto1,
  String? descricaoAcao1,
  String? prazo1,
  String? status1,
  String? tipoInspecao2,
  String? equipamento2,
  String? motivo2,
  String? descricaoFoto2,
  String? descricaoAcao2,
  String? prazo2,
  String? status2,
  String? tipoInspecao3,
  String? equipamento3,
  String? motivo3,
  String? descricaoFoto3,
  String? descricaoAcao3,
  String? prazo3,
  String? status3,
  String? tipoInspecao4,
  String? equipamento4,
  String? motivo4,
  String? descricaoFoto4,
  String? descricaoAcao4,
  String? prazo4,
  String? status4,
  String? tipoInspecao5,
  String? equipamento5,
  String? motivo5,
  String? descricaoFoto5,
  String? descricaoAcao5,
  String? prazo5,
  String? status5,
  String? tipoInspecao6,
  String? equipamento6,
  String? motivo6,
  String? descricaoFoto6,
  String? descricaoAcao6,
  String? prazo6,
  String? status6,
  String? tipoInspecao7,
  String? equipamento7,
  String? motivo7,
  String? descricaoFoto7,
  String? descricaoAcao7,
  String? prazo7,
  String? status7,
  String? tipoInspecao8,
  String? equipamento8,
  String? motivo8,
  String? descricaoFoto8,
  String? descricaoAcao8,
  String? prazo8,
  String? status8,
  String? tipoInspecao9,
  String? equipamento9,
  String? motivo9,
  String? descricaoFoto9,
  String? descricaoAcao9,
  String? prazo9,
  String? status9,
  String? tipoInspecao10,
  String? equipamento10,
  String? motivo10,
  String? descricaoFoto10,
  String? descricaoAcao10,
  String? prazo10,
  String? status10,
  int? impeditivo1,
  int? impeditivo2,
  int? impeditivo3,
  int? impeditivo4,
  int? impeditivo5,
  int? impeditivo6,
  int? impeditivo7,
  int? impeditivo8,
  int? impeditivo9,
  int? impeditivo10,
  String? txfCliente,
}) {
  final query = '''
UPDATE inspecoes 
SET 
  txfResponsavel = '${txfResponsavel}',
  txfData = '${txfData}',
  txfLocal = '${txfLocal}',
  txfCliente = '${txfCliente}',
  
  -- Bloco 1 (original)
  tipoInspecao1 = '${tipoInspecao1}',
  equipamento1 = '${equipamento1}',
  impeditivo1 = ${impeditivo1},  -- ADICIONADO
  motivo1 = '${motivo1}',
  descricaoFoto1 = '${descricaoFoto1}',
  descricaoAcao1 = '${descricaoAcao1}',
  prazo1 = '${prazo1}',
  status1 = '${status1}',
  
  -- Bloco 2
  tipoInspecao2 = '${tipoInspecao2}',
  equipamento2 = '${equipamento2}',
  impeditivo2 = ${impeditivo2},  -- ADICIONADO
  motivo2 = '${motivo2}',
  descricaoFoto2 = '${descricaoFoto2}',
  descricaoAcao2 = '${descricaoAcao2}',
  prazo2 = '${prazo2}',
  status2 = '${status2}',
  
  -- Bloco 3
  tipoInspecao3 = '${tipoInspecao3}',
  equipamento3 = '${equipamento3}',
  impeditivo3 = ${impeditivo3},  -- ADICIONADO
  motivo3 = '${motivo3}',
  descricaoFoto3 = '${descricaoFoto3}',
  descricaoAcao3 = '${descricaoAcao3}',
  prazo3 = '${prazo3}',
  status3 = '${status3}',
  
  -- Bloco 4
  tipoInspecao4 = '${tipoInspecao4}',
  equipamento4 = '${equipamento4}',
  impeditivo4 = ${impeditivo4},  -- ADICIONADO
  motivo4 = '${motivo4}',
  descricaoFoto4 = '${descricaoFoto4}',
  descricaoAcao4 = '${descricaoAcao4}',
  prazo4 = '${prazo4}',
  status4 = '${status4}',
  
  -- Bloco 5
  tipoInspecao5 = '${tipoInspecao5}',
  equipamento5 = '${equipamento5}',
  impeditivo5 = ${impeditivo5},  -- ADICIONADO
  motivo5 = '${motivo5}',
  descricaoFoto5 = '${descricaoFoto5}',
  descricaoAcao5 = '${descricaoAcao5}',
  prazo5 = '${prazo5}',
  status5 = '${status5}',

  -- Bloco 6
  tipoInspecao6 = '${tipoInspecao6}',
  equipamento6 = '${equipamento6}',
  impeditivo6 = ${impeditivo6},  -- ADICIONADO
  motivo6 = '${motivo6}',
  descricaoFoto6 = '${descricaoFoto6}',
  descricaoAcao6 = '${descricaoAcao6}',
  prazo6 = '${prazo6}',
  status6 = '${status6}',
  
  -- Bloco 7
  tipoInspecao7 = '${tipoInspecao7}',
  equipamento7 = '${equipamento7}',
  impeditivo7 = ${impeditivo7},  -- ADICIONADO
  motivo7 = '${motivo7}',
  descricaoFoto7 = '${descricaoFoto7}',
  descricaoAcao7 = '${descricaoAcao7}',
  prazo7 = '${prazo7}',
  status7 = '${status7}',

  -- Bloco 8
  tipoInspecao8 = '${tipoInspecao8}',
  equipamento8 = '${equipamento8}',
  impeditivo8 = ${impeditivo8},  -- ADICIONADO
  motivo8 = '${motivo8}',
  descricaoFoto8 = '${descricaoFoto8}',
  descricaoAcao8 = '${descricaoAcao8}',
  prazo8 = '${prazo8}',
  status8 = '${status8}',
 
  -- Bloco 9
  tipoInspecao9 = '${tipoInspecao9}',
  equipamento9 = '${equipamento9}',
  impeditivo9 = ${impeditivo9},  -- ADICIONADO
  motivo9 = '${motivo9}',
  descricaoFoto9 = '${descricaoFoto9}',
  descricaoAcao9 = '${descricaoAcao9}',
  prazo9 = '${prazo9}',
  status9 = '${status9}',

  -- Bloco 10
  tipoInspecao10 = '${tipoInspecao10}',
  equipamento10 = '${equipamento10}',
  impeditivo10 = ${impeditivo10},  -- ADICIONADO
  motivo10 = '${motivo10}',
  descricaoFoto10 = '${descricaoFoto10}',
  descricaoAcao10 = '${descricaoAcao10}',
  prazo10 = '${prazo10}',
  status10 = '${status10}',
  
  isSynced = 0
WHERE id = ${id};
''';
  return database.rawQuery(query);
}

/// END UPDATEINSPECOES

/// BEGIN INSERIRINSPECAO2COPY
Future performInserirInspecao2Copy(
  Database database, {
  String? txfResponsavel,
  String? txfData,
  String? txfLocal,
  String? tipoInspecao1,
  String? equipamento1,
  String? motivo1,
  String? descricaoFoto1,
  String? descricaoAcao1,
  String? prazo1,
  String? status1,
  String? tipoInspecao2,
  String? equipamento2,
  String? motivo2,
  String? descricaoFoto2,
  String? descricaoAcao2,
  String? prazo2,
  String? status2,
  String? tipoInspecao3,
  String? equipamento3,
  String? motivo3,
  String? descricaoFoto3,
  String? descricaoAcao3,
  String? prazo3,
  String? status3,
  String? tipoInspecao4,
  String? equipamento4,
  String? motivo4,
  String? descricaoFoto4,
  String? descricaoAcao4,
  String? prazo4,
  String? status4,
  String? tipoInspecao5,
  String? equipamento5,
  String? motivo5,
  String? descricaoFoto5,
  String? descricaoAcao5,
  String? prazo5,
  String? status5,
  String? tipoInspecao6,
  String? equipamento6,
  String? motivo6,
  String? descricaoFoto6,
  String? descricaoAcao6,
  String? prazo6,
  String? status6,
  String? tipoInspecao7,
  String? equipamento7,
  String? motivo7,
  String? descricaoFoto7,
  String? descricaoAcao7,
  String? prazo7,
  String? status7,
  String? tipoInspecao8,
  String? equipamento8,
  String? motivo8,
  String? descricaoFoto8,
  String? descricaoAcao8,
  String? prazo8,
  String? status8,
  String? tipoInspecao9,
  String? equipamento9,
  String? motivo9,
  String? descricaoFoto9,
  String? descricaoAcao9,
  String? prazo9,
  String? status9,
  String? tipoInspecao10,
  String? equipamento10,
  String? motivo10,
  String? descricaoFoto10,
  String? descricaoAcao10,
  String? prazo10,
  String? status10,
  int? impeditivo1,
  int? ncampos,
  int? impeditivo2,
  int? impeditivo3,
  int? impeditivo4,
  int? impeditivo5,
  int? impeditivo6,
  int? impeditivo7,
  int? impeditivo8,
  int? impeditivo9,
  int? impeditivo10,
  String? txfCliente,
}) {
  final query = '''
INSERT INTO inspecoes (
  txfResponsavel,   txfData, txfLocal, 
  -- Bloco 1
  tipoInspecao1, equipamento1, impeditivo1, motivo1, descricaoFoto1, descricaoAcao1, prazo1, status1, 
  -- Blocos 2-10 
  tipoInspecao2, equipamento2, impeditivo2, motivo2, descricaoFoto2, descricaoAcao2, prazo2, status2,
  tipoInspecao3, equipamento3, impeditivo3, motivo3, descricaoFoto3, descricaoAcao3, prazo3, status3,
  tipoInspecao4, equipamento4, impeditivo4, motivo4, descricaoFoto4, descricaoAcao4, prazo4, status4,
  tipoInspecao5, equipamento5, impeditivo5, motivo5, descricaoFoto5, descricaoAcao5, prazo5, status5,
  tipoInspecao6, equipamento6, impeditivo6, motivo6, descricaoFoto6, descricaoAcao6, prazo6, status6,
  tipoInspecao7, equipamento7, impeditivo7, motivo7, descricaoFoto7, descricaoAcao7, prazo7, status7,
  tipoInspecao8, equipamento8, impeditivo8, motivo8, descricaoFoto8, descricaoAcao8, prazo8, status8,
  tipoInspecao9, equipamento9, impeditivo9, motivo9, descricaoFoto9, descricaoAcao9, prazo9, status9,
  tipoInspecao10, equipamento10, impeditivo10, motivo10, descricaoFoto10, descricaoAcao10, prazo10, status10,
  isSynced,
  ncampos,
  txfCliente
  
) VALUES (
  '${txfResponsavel}',  '${txfData}', '${txfLocal}'  , 
  -- Bloco 1
  '${tipoInspecao1}', '${equipamento1}', ${impeditivo1}, '${motivo1}', '${descricaoFoto1}', '${descricaoAcao1}', '${prazo1}', '${status1}',
  -- Blocos 2-10 
  '${tipoInspecao2}', '${equipamento2}', ${impeditivo2}, '${motivo2}', '${descricaoFoto2}', '${descricaoAcao2}', '${prazo2}', '${status2}',
  '${tipoInspecao3}', '${equipamento3}', ${impeditivo3}, '${motivo3}', '${descricaoFoto3}', '${descricaoAcao3}', '${prazo3}', '${status3}',
  '${tipoInspecao4}', '${equipamento4}', ${impeditivo4}, '${motivo4}', '${descricaoFoto4}', '${descricaoAcao4}', '${prazo4}', '${status4}',
  '${tipoInspecao5}', '${equipamento5}', ${impeditivo5}, '${motivo5}', '${descricaoFoto5}', '${descricaoAcao5}', '${prazo5}', '${status5}',
  '${tipoInspecao6}', '${equipamento6}', ${impeditivo6}, '${motivo6}', '${descricaoFoto6}', '${descricaoAcao6}', '${prazo6}', '${status6}',
  '${tipoInspecao7}', '${equipamento7}', ${impeditivo7}, '${motivo7}', '${descricaoFoto7}', '${descricaoAcao7}', '${prazo7}', '${status7}',
  '${tipoInspecao8}', '${equipamento8}', ${impeditivo8}, '${motivo8}', '${descricaoFoto8}', '${descricaoAcao8}', '${prazo8}', '${status8}',
  '${tipoInspecao9}', '${equipamento9}', ${impeditivo9}, '${motivo9}', '${descricaoFoto9}', '${descricaoAcao9}', '${prazo9}', '${status9}',
  '${tipoInspecao10}', '${equipamento10}', ${impeditivo10}, '${motivo10}', '${descricaoFoto10}', '${descricaoAcao10}', '${prazo10}', '${status10}',
  0,
  ${ncampos},
  '${txfCliente}'
);
''';
  return database.rawQuery(query);
}

/// END INSERIRINSPECAO2COPY
