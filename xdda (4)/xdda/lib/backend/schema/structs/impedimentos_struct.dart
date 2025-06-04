// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImpedimentosStruct extends BaseStruct {
  ImpedimentosStruct({
    int? impedimento1,
  }) : _impedimento1 = impedimento1;

  // "impedimento1" field.
  int? _impedimento1;
  int get impedimento1 => _impedimento1 ?? 0;
  set impedimento1(int? val) => _impedimento1 = val;

  void incrementImpedimento1(int amount) =>
      impedimento1 = impedimento1 + amount;

  bool hasImpedimento1() => _impedimento1 != null;

  static ImpedimentosStruct fromMap(Map<String, dynamic> data) =>
      ImpedimentosStruct(
        impedimento1: castToType<int>(data['impedimento1']),
      );

  static ImpedimentosStruct? maybeFromMap(dynamic data) => data is Map
      ? ImpedimentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'impedimento1': _impedimento1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'impedimento1': serializeParam(
          _impedimento1,
          ParamType.int,
        ),
      }.withoutNulls;

  static ImpedimentosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImpedimentosStruct(
        impedimento1: deserializeParam(
          data['impedimento1'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ImpedimentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImpedimentosStruct && impedimento1 == other.impedimento1;
  }

  @override
  int get hashCode => const ListEquality().hash([impedimento1]);
}

ImpedimentosStruct createImpedimentosStruct({
  int? impedimento1,
}) =>
    ImpedimentosStruct(
      impedimento1: impedimento1,
    );
