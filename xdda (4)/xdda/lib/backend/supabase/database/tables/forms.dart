import '../database.dart';

class FormsTable extends SupabaseTable<FormsRow> {
  @override
  String get tableName => 'Forms';

  @override
  FormsRow createRow(Map<String, dynamic> data) => FormsRow(data);
}

class FormsRow extends SupabaseDataRow {
  FormsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FormsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get dataField => getField<String>('data');
  set dataField(String? value) => setField<String>('data', value);

  String? get local => getField<String>('local');
  set local(String? value) => setField<String>('local', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get fotoDesc1 => getField<String>('foto_desc1');
  set fotoDesc1(String? value) => setField<String>('foto_desc1', value);

  String? get acaoDesc1 => getField<String>('acao_desc1');
  set acaoDesc1(String? value) => setField<String>('acao_desc1', value);

  String? get fotoDesc2 => getField<String>('foto_desc2');
  set fotoDesc2(String? value) => setField<String>('foto_desc2', value);

  String? get fotoDesc3 => getField<String>('foto_desc3');
  set fotoDesc3(String? value) => setField<String>('foto_desc3', value);

  String? get fotoDesc4 => getField<String>('foto_desc4');
  set fotoDesc4(String? value) => setField<String>('foto_desc4', value);

  String? get acaoDesc2 => getField<String>('acao_desc2');
  set acaoDesc2(String? value) => setField<String>('acao_desc2', value);

  String? get acaoDesc3 => getField<String>('acao_desc3');
  set acaoDesc3(String? value) => setField<String>('acao_desc3', value);

  String? get acaoDesc4 => getField<String>('acao_desc4');
  set acaoDesc4(String? value) => setField<String>('acao_desc4', value);

  String? get acaoDesc5 => getField<String>('acao_desc5');
  set acaoDesc5(String? value) => setField<String>('acao_desc5', value);

  String? get acaoDesc6 => getField<String>('acao_desc6');
  set acaoDesc6(String? value) => setField<String>('acao_desc6', value);

  String? get acaoDesc7 => getField<String>('acao_desc7');
  set acaoDesc7(String? value) => setField<String>('acao_desc7', value);

  String? get acaoDesc8 => getField<String>('acao_desc8');
  set acaoDesc8(String? value) => setField<String>('acao_desc8', value);

  String? get acaoDesc9 => getField<String>('acao_desc9');
  set acaoDesc9(String? value) => setField<String>('acao_desc9', value);

  String? get acaoDesc10 => getField<String>('acao_desc10');
  set acaoDesc10(String? value) => setField<String>('acao_desc10', value);

  String? get fotoDesc5 => getField<String>('foto_desc5');
  set fotoDesc5(String? value) => setField<String>('foto_desc5', value);

  String? get fotoDesc6 => getField<String>('foto_desc6');
  set fotoDesc6(String? value) => setField<String>('foto_desc6', value);

  String? get fotoDesc7 => getField<String>('foto_desc7');
  set fotoDesc7(String? value) => setField<String>('foto_desc7', value);

  String? get fotoDesc8 => getField<String>('foto_desc8');
  set fotoDesc8(String? value) => setField<String>('foto_desc8', value);

  String? get fotoDesc9 => getField<String>('foto_desc9');
  set fotoDesc9(String? value) => setField<String>('foto_desc9', value);

  String? get fotoDesc10 => getField<String>('foto_desc10');
  set fotoDesc10(String? value) => setField<String>('foto_desc10', value);

  String? get impeditivo => getField<String>('impeditivo');
  set impeditivo(String? value) => setField<String>('impeditivo', value);

  String? get motivoImpeditivo => getField<String>('motivo_impeditivo');
  set motivoImpeditivo(String? value) =>
      setField<String>('motivo_impeditivo', value);

  String? get inspecao1 => getField<String>('inspecao1');
  set inspecao1(String? value) => setField<String>('inspecao1', value);

  String? get inspecao2 => getField<String>('inspecao2');
  set inspecao2(String? value) => setField<String>('inspecao2', value);

  String? get inspecao3 => getField<String>('inspecao3');
  set inspecao3(String? value) => setField<String>('inspecao3', value);

  String? get inspecao4 => getField<String>('inspecao4');
  set inspecao4(String? value) => setField<String>('inspecao4', value);

  String? get inspecao5 => getField<String>('inspecao5');
  set inspecao5(String? value) => setField<String>('inspecao5', value);

  String? get inspecao6 => getField<String>('inspecao6');
  set inspecao6(String? value) => setField<String>('inspecao6', value);

  String? get inspecao7 => getField<String>('inspecao7');
  set inspecao7(String? value) => setField<String>('inspecao7', value);

  String? get inspecao8 => getField<String>('inspecao8');
  set inspecao8(String? value) => setField<String>('inspecao8', value);

  String? get inspecao9 => getField<String>('inspecao9');
  set inspecao9(String? value) => setField<String>('inspecao9', value);

  String? get inspecao10 => getField<String>('inspecao10');
  set inspecao10(String? value) => setField<String>('inspecao10', value);

  String? get equipamento1 => getField<String>('equipamento1');
  set equipamento1(String? value) => setField<String>('equipamento1', value);

  String? get equipamento2 => getField<String>('equipamento2');
  set equipamento2(String? value) => setField<String>('equipamento2', value);

  String? get equipamento3 => getField<String>('equipamento3');
  set equipamento3(String? value) => setField<String>('equipamento3', value);

  String? get equipamento4 => getField<String>('equipamento4');
  set equipamento4(String? value) => setField<String>('equipamento4', value);

  String? get equipamento5 => getField<String>('equipamento5');
  set equipamento5(String? value) => setField<String>('equipamento5', value);

  String? get equipamento6 => getField<String>('equipamento6');
  set equipamento6(String? value) => setField<String>('equipamento6', value);

  String? get equipamento7 => getField<String>('equipamento7');
  set equipamento7(String? value) => setField<String>('equipamento7', value);

  String? get equipamento8 => getField<String>('equipamento8');
  set equipamento8(String? value) => setField<String>('equipamento8', value);

  String? get equipamento9 => getField<String>('equipamento9');
  set equipamento9(String? value) => setField<String>('equipamento9', value);

  String? get equipamento10 => getField<String>('equipamento10');
  set equipamento10(String? value) => setField<String>('equipamento10', value);

  bool? get impedimento1 => getField<bool>('impedimento1');
  set impedimento1(bool? value) => setField<bool>('impedimento1', value);

  bool? get impedimento2 => getField<bool>('impedimento2');
  set impedimento2(bool? value) => setField<bool>('impedimento2', value);

  bool? get impedimento3 => getField<bool>('impedimento3');
  set impedimento3(bool? value) => setField<bool>('impedimento3', value);

  bool? get impedimento4 => getField<bool>('impedimento4');
  set impedimento4(bool? value) => setField<bool>('impedimento4', value);

  bool? get impedimento5 => getField<bool>('impedimento5');
  set impedimento5(bool? value) => setField<bool>('impedimento5', value);

  bool? get impedimento6 => getField<bool>('impedimento6');
  set impedimento6(bool? value) => setField<bool>('impedimento6', value);

  bool? get impedimento7 => getField<bool>('impedimento7');
  set impedimento7(bool? value) => setField<bool>('impedimento7', value);

  bool? get impedimento8 => getField<bool>('impedimento8');
  set impedimento8(bool? value) => setField<bool>('impedimento8', value);

  bool? get impedimento9 => getField<bool>('impedimento9');
  set impedimento9(bool? value) => setField<bool>('impedimento9', value);

  bool? get impedimento10 => getField<bool>('impedimento10');
  set impedimento10(bool? value) => setField<bool>('impedimento10', value);

  String? get motivoImpeditivo1 => getField<String>('motivo_impeditivo1');
  set motivoImpeditivo1(String? value) =>
      setField<String>('motivo_impeditivo1', value);

  String? get motivoImpeditivo2 => getField<String>('motivo_impeditivo2');
  set motivoImpeditivo2(String? value) =>
      setField<String>('motivo_impeditivo2', value);

  String? get motivoImpeditivo3 => getField<String>('motivo_impeditivo3');
  set motivoImpeditivo3(String? value) =>
      setField<String>('motivo_impeditivo3', value);

  String? get motivoImpeditivo4 => getField<String>('motivo_impeditivo4');
  set motivoImpeditivo4(String? value) =>
      setField<String>('motivo_impeditivo4', value);

  String? get motivoImpeditivo5 => getField<String>('motivo_impeditivo5');
  set motivoImpeditivo5(String? value) =>
      setField<String>('motivo_impeditivo5', value);

  String? get motivoImpeditivo6 => getField<String>('motivo_impeditivo6');
  set motivoImpeditivo6(String? value) =>
      setField<String>('motivo_impeditivo6', value);

  String? get motivoImpeditivo7 => getField<String>('motivo_impeditivo7');
  set motivoImpeditivo7(String? value) =>
      setField<String>('motivo_impeditivo7', value);

  String? get motivoImpeditivo8 => getField<String>('motivo_impeditivo8');
  set motivoImpeditivo8(String? value) =>
      setField<String>('motivo_impeditivo8', value);

  String? get motivoImpeditivo9 => getField<String>('motivo_impeditivo9');
  set motivoImpeditivo9(String? value) =>
      setField<String>('motivo_impeditivo9', value);

  String? get motivoImpeditivo10 => getField<String>('motivo_impeditivo10');
  set motivoImpeditivo10(String? value) =>
      setField<String>('motivo_impeditivo10', value);

  String? get limite1 => getField<String>('limite1');
  set limite1(String? value) => setField<String>('limite1', value);

  String? get limite2 => getField<String>('limite2');
  set limite2(String? value) => setField<String>('limite2', value);

  String? get limite3 => getField<String>('limite3');
  set limite3(String? value) => setField<String>('limite3', value);

  String? get limite4 => getField<String>('limite4');
  set limite4(String? value) => setField<String>('limite4', value);

  String? get limite5 => getField<String>('limite5');
  set limite5(String? value) => setField<String>('limite5', value);

  String? get limite6 => getField<String>('limite6');
  set limite6(String? value) => setField<String>('limite6', value);

  String? get limite7 => getField<String>('limite7');
  set limite7(String? value) => setField<String>('limite7', value);

  String? get limite8 => getField<String>('limite8');
  set limite8(String? value) => setField<String>('limite8', value);

  String? get limite9 => getField<String>('limite9');
  set limite9(String? value) => setField<String>('limite9', value);

  String? get limite10 => getField<String>('limite10');
  set limite10(String? value) => setField<String>('limite10', value);

  String? get status1 => getField<String>('status1');
  set status1(String? value) => setField<String>('status1', value);

  String? get status2 => getField<String>('status2');
  set status2(String? value) => setField<String>('status2', value);

  String? get status3 => getField<String>('status3');
  set status3(String? value) => setField<String>('status3', value);

  String? get status4 => getField<String>('status4');
  set status4(String? value) => setField<String>('status4', value);

  String? get status5 => getField<String>('status5');
  set status5(String? value) => setField<String>('status5', value);

  String? get status6 => getField<String>('status6');
  set status6(String? value) => setField<String>('status6', value);

  String? get status7 => getField<String>('status7');
  set status7(String? value) => setField<String>('status7', value);

  String? get status8 => getField<String>('status8');
  set status8(String? value) => setField<String>('status8', value);

  String? get status9 => getField<String>('status9');
  set status9(String? value) => setField<String>('status9', value);

  String? get status10 => getField<String>('status10');
  set status10(String? value) => setField<String>('status10', value);

  String? get foto1 => getField<String>('foto1');
  set foto1(String? value) => setField<String>('foto1', value);

  String? get foto2 => getField<String>('foto2');
  set foto2(String? value) => setField<String>('foto2', value);

  String? get foto3 => getField<String>('foto3');
  set foto3(String? value) => setField<String>('foto3', value);

  String? get foto4 => getField<String>('foto4');
  set foto4(String? value) => setField<String>('foto4', value);

  String? get foto5 => getField<String>('foto5');
  set foto5(String? value) => setField<String>('foto5', value);

  String? get foto6 => getField<String>('foto6');
  set foto6(String? value) => setField<String>('foto6', value);

  String? get foto7 => getField<String>('foto7');
  set foto7(String? value) => setField<String>('foto7', value);

  String? get foto8 => getField<String>('foto8');
  set foto8(String? value) => setField<String>('foto8', value);

  String? get foto9 => getField<String>('foto9');
  set foto9(String? value) => setField<String>('foto9', value);

  String? get foto10 => getField<String>('foto10');
  set foto10(String? value) => setField<String>('foto10', value);

  int? get ncampos => getField<int>('ncampos');
  set ncampos(int? value) => setField<int>('ncampos', value);

  bool? get isSynced => getField<bool>('isSynced');
  set isSynced(bool? value) => setField<bool>('isSynced', value);

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);
}
