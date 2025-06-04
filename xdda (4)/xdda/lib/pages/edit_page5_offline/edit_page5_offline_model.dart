import '/auth/supabase_auth/auth_util.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'edit_page5_offline_widget.dart' show EditPage5OfflineWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditPage5OfflineModel extends FlutterFlowModel<EditPage5OfflineWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txfResponvasel widget.
  FocusNode? txfResponvaselFocusNode;
  TextEditingController? txfResponvaselTextController;
  String? Function(BuildContext, String?)?
      txfResponvaselTextControllerValidator;
  // State field(s) for txfCliente widget.
  FocusNode? txfClienteFocusNode;
  TextEditingController? txfClienteTextController;
  String? Function(BuildContext, String?)? txfClienteTextControllerValidator;
  // State field(s) for txfData widget.
  FocusNode? txfDataFocusNode;
  TextEditingController? txfDataTextController;
  final txfDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfDataTextControllerValidator;
  // State field(s) for idteste widget.
  FocusNode? idtesteFocusNode;
  TextEditingController? idtesteTextController;
  final idtesteMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? idtesteTextControllerValidator;
  // State field(s) for txfLocals widget.
  FocusNode? txfLocalsFocusNode;
  TextEditingController? txfLocalsTextController;
  String? Function(BuildContext, String?)? txfLocalsTextControllerValidator;
  // State field(s) for txfOutroMotivo1 widget.
  final txfOutroMotivo1Key = GlobalKey();
  FocusNode? txfOutroMotivo1FocusNode;
  TextEditingController? txfOutroMotivo1TextController;
  String? txfOutroMotivo1SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo1TextControllerValidator;
  // State field(s) for dpdEquipamento1 widget.
  String? dpdEquipamento1Value1;
  FormFieldController<String>? dpdEquipamento1ValueController1;
  // State field(s) for dpdEquipamento1 widget.
  String? dpdEquipamento1Value2;
  FormFieldController<String>? dpdEquipamento1ValueController2;
  // State field(s) for impedimento1 widget.
  bool? impedimento1Value;
  // State field(s) for txfImpedimento1 widget.
  FocusNode? txfImpedimento1FocusNode;
  TextEditingController? txfImpedimento1TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento1TextControllerValidator;
  bool isDataUploading_uploadData1xd = false;
  FFUploadedFile uploadedLocalFile_uploadData1xd =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto1 widget.
  FocusNode? txtFoto1FocusNode;
  TextEditingController? txtFoto1TextController;
  String? Function(BuildContext, String?)? txtFoto1TextControllerValidator;
  // State field(s) for txfAcoes1 widget.
  FocusNode? txfAcoes1FocusNode;
  TextEditingController? txfAcoes1TextController;
  String? Function(BuildContext, String?)? txfAcoes1TextControllerValidator;
  // State field(s) for txfLimite1 widget.
  FocusNode? txfLimite1FocusNode;
  TextEditingController? txfLimite1TextController;
  final txfLimite1Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite1TextControllerValidator;
  // State field(s) for dpdStatus1 widget.
  String? dpdStatus1Value;
  FormFieldController<String>? dpdStatus1ValueController;
  // State field(s) for txfOutroMotivo2 widget.
  final txfOutroMotivo2Key = GlobalKey();
  FocusNode? txfOutroMotivo2FocusNode;
  TextEditingController? txfOutroMotivo2TextController;
  String? txfOutroMotivo2SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo2TextControllerValidator;
  // State field(s) for dpdEquipamento2 widget.
  String? dpdEquipamento2Value;
  FormFieldController<String>? dpdEquipamento2ValueController;
  // State field(s) for impedimento2 widget.
  bool? impedimento2Value;
  // State field(s) for txfImpedimento2 widget.
  FocusNode? txfImpedimento2FocusNode;
  TextEditingController? txfImpedimento2TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento2TextControllerValidator;
  bool isDataUploading_uploadData2xd = false;
  FFUploadedFile uploadedLocalFile_uploadData2xd =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto2 widget.
  FocusNode? txtFoto2FocusNode;
  TextEditingController? txtFoto2TextController;
  String? Function(BuildContext, String?)? txtFoto2TextControllerValidator;
  // State field(s) for txfAcoes2 widget.
  FocusNode? txfAcoes2FocusNode;
  TextEditingController? txfAcoes2TextController;
  String? Function(BuildContext, String?)? txfAcoes2TextControllerValidator;
  // State field(s) for txfLimite2 widget.
  FocusNode? txfLimite2FocusNode;
  TextEditingController? txfLimite2TextController;
  final txfLimite2Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite2TextControllerValidator;
  // State field(s) for dpdStatus2 widget.
  String? dpdStatus2Value;
  FormFieldController<String>? dpdStatus2ValueController;
  // State field(s) for txfOutroMotivo3 widget.
  final txfOutroMotivo3Key = GlobalKey();
  FocusNode? txfOutroMotivo3FocusNode;
  TextEditingController? txfOutroMotivo3TextController;
  String? txfOutroMotivo3SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo3TextControllerValidator;
  // State field(s) for dpdEquipamento3 widget.
  String? dpdEquipamento3Value;
  FormFieldController<String>? dpdEquipamento3ValueController;
  // State field(s) for impedimento3 widget.
  bool? impedimento3Value;
  // State field(s) for txfImpedimento3 widget.
  FocusNode? txfImpedimento3FocusNode;
  TextEditingController? txfImpedimento3TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento3TextControllerValidator;
  bool isDataUploading_uploadData3xd = false;
  FFUploadedFile uploadedLocalFile_uploadData3xd =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto3 widget.
  FocusNode? txtFoto3FocusNode;
  TextEditingController? txtFoto3TextController;
  String? Function(BuildContext, String?)? txtFoto3TextControllerValidator;
  // State field(s) for txfAcoes3 widget.
  FocusNode? txfAcoes3FocusNode;
  TextEditingController? txfAcoes3TextController;
  String? Function(BuildContext, String?)? txfAcoes3TextControllerValidator;
  // State field(s) for txfLimite3 widget.
  FocusNode? txfLimite3FocusNode;
  TextEditingController? txfLimite3TextController;
  final txfLimite3Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite3TextControllerValidator;
  // State field(s) for dpdStatus3 widget.
  String? dpdStatus3Value;
  FormFieldController<String>? dpdStatus3ValueController;
  // State field(s) for txfOutroMotivo4 widget.
  final txfOutroMotivo4Key = GlobalKey();
  FocusNode? txfOutroMotivo4FocusNode;
  TextEditingController? txfOutroMotivo4TextController;
  String? txfOutroMotivo4SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo4TextControllerValidator;
  // State field(s) for dpdEquipamento4 widget.
  String? dpdEquipamento4Value;
  FormFieldController<String>? dpdEquipamento4ValueController;
  // State field(s) for impedimento4 widget.
  bool? impedimento4Value;
  // State field(s) for txfImpedimento4 widget.
  FocusNode? txfImpedimento4FocusNode;
  TextEditingController? txfImpedimento4TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento4TextControllerValidator;
  bool isDataUploading_uploadData4xd = false;
  FFUploadedFile uploadedLocalFile_uploadData4xd =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto4 widget.
  FocusNode? txtFoto4FocusNode;
  TextEditingController? txtFoto4TextController;
  String? Function(BuildContext, String?)? txtFoto4TextControllerValidator;
  // State field(s) for txfAcoes4 widget.
  FocusNode? txfAcoes4FocusNode;
  TextEditingController? txfAcoes4TextController;
  String? Function(BuildContext, String?)? txfAcoes4TextControllerValidator;
  // State field(s) for txfLimite4 widget.
  FocusNode? txfLimite4FocusNode;
  TextEditingController? txfLimite4TextController;
  final txfLimite4Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite4TextControllerValidator;
  // State field(s) for dpdStatus4 widget.
  String? dpdStatus4Value;
  FormFieldController<String>? dpdStatus4ValueController;
  // State field(s) for txfOutroMotivo5 widget.
  final txfOutroMotivo5Key = GlobalKey();
  FocusNode? txfOutroMotivo5FocusNode;
  TextEditingController? txfOutroMotivo5TextController;
  String? txfOutroMotivo5SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo5TextControllerValidator;
  // State field(s) for dpdEquipamento5 widget.
  String? dpdEquipamento5Value;
  FormFieldController<String>? dpdEquipamento5ValueController;
  // State field(s) for impedimento5 widget.
  bool? impedimento5Value;
  // State field(s) for txfImpedimento5 widget.
  FocusNode? txfImpedimento5FocusNode;
  TextEditingController? txfImpedimento5TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento5TextControllerValidator;
  bool isDataUploading_uploadData5xd = false;
  FFUploadedFile uploadedLocalFile_uploadData5xd =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto5 widget.
  FocusNode? txtFoto5FocusNode;
  TextEditingController? txtFoto5TextController;
  String? Function(BuildContext, String?)? txtFoto5TextControllerValidator;
  // State field(s) for txfAcoes5 widget.
  FocusNode? txfAcoes5FocusNode;
  TextEditingController? txfAcoes5TextController;
  String? Function(BuildContext, String?)? txfAcoes5TextControllerValidator;
  // State field(s) for txfLimite5 widget.
  FocusNode? txfLimite5FocusNode;
  TextEditingController? txfLimite5TextController;
  final txfLimite5Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite5TextControllerValidator;
  // State field(s) for dpdStatus5 widget.
  String? dpdStatus5Value;
  FormFieldController<String>? dpdStatus5ValueController;
  // State field(s) for txfOutroMotivo6 widget.
  final txfOutroMotivo6Key = GlobalKey();
  FocusNode? txfOutroMotivo6FocusNode;
  TextEditingController? txfOutroMotivo6TextController;
  String? txfOutroMotivo6SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo6TextControllerValidator;
  // State field(s) for dpdEquipamento6 widget.
  String? dpdEquipamento6Value;
  FormFieldController<String>? dpdEquipamento6ValueController;
  // State field(s) for impedimento6 widget.
  bool? impedimento6Value;
  // State field(s) for txfImpedimento6 widget.
  FocusNode? txfImpedimento6FocusNode;
  TextEditingController? txfImpedimento6TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento6TextControllerValidator;
  bool isDataUploading_uploadData6x = false;
  FFUploadedFile uploadedLocalFile_uploadData6x =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto6 widget.
  FocusNode? txtFoto6FocusNode;
  TextEditingController? txtFoto6TextController;
  String? Function(BuildContext, String?)? txtFoto6TextControllerValidator;
  // State field(s) for txfAcoes6 widget.
  FocusNode? txfAcoes6FocusNode;
  TextEditingController? txfAcoes6TextController;
  String? Function(BuildContext, String?)? txfAcoes6TextControllerValidator;
  // State field(s) for txfLimite6 widget.
  FocusNode? txfLimite6FocusNode;
  TextEditingController? txfLimite6TextController;
  final txfLimite6Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite6TextControllerValidator;
  // State field(s) for dpdStatus6 widget.
  String? dpdStatus6Value;
  FormFieldController<String>? dpdStatus6ValueController;
  // State field(s) for txfOutroMotivo7 widget.
  final txfOutroMotivo7Key = GlobalKey();
  FocusNode? txfOutroMotivo7FocusNode;
  TextEditingController? txfOutroMotivo7TextController;
  String? txfOutroMotivo7SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo7TextControllerValidator;
  // State field(s) for dpdEquipamento7 widget.
  String? dpdEquipamento7Value;
  FormFieldController<String>? dpdEquipamento7ValueController;
  // State field(s) for impedimento7 widget.
  bool? impedimento7Value;
  // State field(s) for txfImpedimento7 widget.
  FocusNode? txfImpedimento7FocusNode;
  TextEditingController? txfImpedimento7TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento7TextControllerValidator;
  bool isDataUploading_uploadData7x = false;
  FFUploadedFile uploadedLocalFile_uploadData7x =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto7 widget.
  FocusNode? txtFoto7FocusNode;
  TextEditingController? txtFoto7TextController;
  String? Function(BuildContext, String?)? txtFoto7TextControllerValidator;
  // State field(s) for txfAcoes7 widget.
  FocusNode? txfAcoes7FocusNode;
  TextEditingController? txfAcoes7TextController;
  String? Function(BuildContext, String?)? txfAcoes7TextControllerValidator;
  // State field(s) for txfLimite7 widget.
  FocusNode? txfLimite7FocusNode;
  TextEditingController? txfLimite7TextController;
  final txfLimite7Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite7TextControllerValidator;
  // State field(s) for dpdStatus7 widget.
  String? dpdStatus7Value;
  FormFieldController<String>? dpdStatus7ValueController;
  // State field(s) for txfOutroMotivo8 widget.
  final txfOutroMotivo8Key = GlobalKey();
  FocusNode? txfOutroMotivo8FocusNode;
  TextEditingController? txfOutroMotivo8TextController;
  String? txfOutroMotivo8SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo8TextControllerValidator;
  // State field(s) for dpdEquipamento8 widget.
  String? dpdEquipamento8Value;
  FormFieldController<String>? dpdEquipamento8ValueController;
  // State field(s) for impedimento8 widget.
  bool? impedimento8Value;
  // State field(s) for txfImpedimento8 widget.
  FocusNode? txfImpedimento8FocusNode;
  TextEditingController? txfImpedimento8TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento8TextControllerValidator;
  bool isDataUploading_uploadData8x = false;
  FFUploadedFile uploadedLocalFile_uploadData8x =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto8 widget.
  FocusNode? txtFoto8FocusNode;
  TextEditingController? txtFoto8TextController;
  String? Function(BuildContext, String?)? txtFoto8TextControllerValidator;
  // State field(s) for txfAcoes8 widget.
  FocusNode? txfAcoes8FocusNode;
  TextEditingController? txfAcoes8TextController;
  String? Function(BuildContext, String?)? txfAcoes8TextControllerValidator;
  // State field(s) for txfLimite8 widget.
  FocusNode? txfLimite8FocusNode;
  TextEditingController? txfLimite8TextController;
  final txfLimite8Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite8TextControllerValidator;
  // State field(s) for dpdStatus8 widget.
  String? dpdStatus8Value;
  FormFieldController<String>? dpdStatus8ValueController;
  // State field(s) for txfOutroMotivo9 widget.
  final txfOutroMotivo9Key = GlobalKey();
  FocusNode? txfOutroMotivo9FocusNode;
  TextEditingController? txfOutroMotivo9TextController;
  String? txfOutroMotivo9SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo9TextControllerValidator;
  // State field(s) for dpdEquipamento9 widget.
  String? dpdEquipamento9Value;
  FormFieldController<String>? dpdEquipamento9ValueController;
  // State field(s) for impedimento9 widget.
  bool? impedimento9Value;
  // State field(s) for txfImpedimento9 widget.
  FocusNode? txfImpedimento9FocusNode;
  TextEditingController? txfImpedimento9TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento9TextControllerValidator;
  bool isDataUploading_uploadData9xd = false;
  FFUploadedFile uploadedLocalFile_uploadData9xd =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto9 widget.
  FocusNode? txtFoto9FocusNode;
  TextEditingController? txtFoto9TextController;
  String? Function(BuildContext, String?)? txtFoto9TextControllerValidator;
  // State field(s) for txfAcoes9 widget.
  FocusNode? txfAcoes9FocusNode;
  TextEditingController? txfAcoes9TextController;
  String? Function(BuildContext, String?)? txfAcoes9TextControllerValidator;
  // State field(s) for txfLimite9 widget.
  FocusNode? txfLimite9FocusNode;
  TextEditingController? txfLimite9TextController;
  final txfLimite9Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite9TextControllerValidator;
  // State field(s) for dpdStatus9 widget.
  String? dpdStatus9Value;
  FormFieldController<String>? dpdStatus9ValueController;
  // State field(s) for txfOutroMotivo10 widget.
  final txfOutroMotivo10Key = GlobalKey();
  FocusNode? txfOutroMotivo10FocusNode;
  TextEditingController? txfOutroMotivo10TextController;
  String? txfOutroMotivo10SelectedOption;
  String? Function(BuildContext, String?)?
      txfOutroMotivo10TextControllerValidator;
  // State field(s) for dpdEquipamento10 widget.
  String? dpdEquipamento10Value;
  FormFieldController<String>? dpdEquipamento10ValueController;
  // State field(s) for impedimento10 widget.
  bool? impedimento10Value;
  // State field(s) for txfImpedimento10 widget.
  FocusNode? txfImpedimento10FocusNode;
  TextEditingController? txfImpedimento10TextController;
  String? Function(BuildContext, String?)?
      txfImpedimento10TextControllerValidator;
  bool isDataUploading_uploadData10xd = false;
  FFUploadedFile uploadedLocalFile_uploadData10xd =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtFoto10 widget.
  FocusNode? txtFoto10FocusNode;
  TextEditingController? txtFoto10TextController;
  String? Function(BuildContext, String?)? txtFoto10TextControllerValidator;
  // State field(s) for txfAcoes10 widget.
  FocusNode? txfAcoes10FocusNode;
  TextEditingController? txfAcoes10TextController;
  String? Function(BuildContext, String?)? txfAcoes10TextControllerValidator;
  // State field(s) for txfLimite10 widget.
  FocusNode? txfLimite10FocusNode;
  TextEditingController? txfLimite10TextController;
  final txfLimite10Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? txfLimite10TextControllerValidator;
  // State field(s) for dpdStatus10 widget.
  String? dpdStatus10Value;
  FormFieldController<String>? dpdStatus10ValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txfResponvaselFocusNode?.dispose();
    txfResponvaselTextController?.dispose();

    txfClienteFocusNode?.dispose();
    txfClienteTextController?.dispose();

    txfDataFocusNode?.dispose();
    txfDataTextController?.dispose();

    idtesteFocusNode?.dispose();
    idtesteTextController?.dispose();

    txfLocalsFocusNode?.dispose();
    txfLocalsTextController?.dispose();

    txfOutroMotivo1FocusNode?.dispose();

    txfImpedimento1FocusNode?.dispose();
    txfImpedimento1TextController?.dispose();

    txtFoto1FocusNode?.dispose();
    txtFoto1TextController?.dispose();

    txfAcoes1FocusNode?.dispose();
    txfAcoes1TextController?.dispose();

    txfLimite1FocusNode?.dispose();
    txfLimite1TextController?.dispose();

    txfOutroMotivo2FocusNode?.dispose();

    txfImpedimento2FocusNode?.dispose();
    txfImpedimento2TextController?.dispose();

    txtFoto2FocusNode?.dispose();
    txtFoto2TextController?.dispose();

    txfAcoes2FocusNode?.dispose();
    txfAcoes2TextController?.dispose();

    txfLimite2FocusNode?.dispose();
    txfLimite2TextController?.dispose();

    txfOutroMotivo3FocusNode?.dispose();

    txfImpedimento3FocusNode?.dispose();
    txfImpedimento3TextController?.dispose();

    txtFoto3FocusNode?.dispose();
    txtFoto3TextController?.dispose();

    txfAcoes3FocusNode?.dispose();
    txfAcoes3TextController?.dispose();

    txfLimite3FocusNode?.dispose();
    txfLimite3TextController?.dispose();

    txfOutroMotivo4FocusNode?.dispose();

    txfImpedimento4FocusNode?.dispose();
    txfImpedimento4TextController?.dispose();

    txtFoto4FocusNode?.dispose();
    txtFoto4TextController?.dispose();

    txfAcoes4FocusNode?.dispose();
    txfAcoes4TextController?.dispose();

    txfLimite4FocusNode?.dispose();
    txfLimite4TextController?.dispose();

    txfOutroMotivo5FocusNode?.dispose();

    txfImpedimento5FocusNode?.dispose();
    txfImpedimento5TextController?.dispose();

    txtFoto5FocusNode?.dispose();
    txtFoto5TextController?.dispose();

    txfAcoes5FocusNode?.dispose();
    txfAcoes5TextController?.dispose();

    txfLimite5FocusNode?.dispose();
    txfLimite5TextController?.dispose();

    txfOutroMotivo6FocusNode?.dispose();

    txfImpedimento6FocusNode?.dispose();
    txfImpedimento6TextController?.dispose();

    txtFoto6FocusNode?.dispose();
    txtFoto6TextController?.dispose();

    txfAcoes6FocusNode?.dispose();
    txfAcoes6TextController?.dispose();

    txfLimite6FocusNode?.dispose();
    txfLimite6TextController?.dispose();

    txfOutroMotivo7FocusNode?.dispose();

    txfImpedimento7FocusNode?.dispose();
    txfImpedimento7TextController?.dispose();

    txtFoto7FocusNode?.dispose();
    txtFoto7TextController?.dispose();

    txfAcoes7FocusNode?.dispose();
    txfAcoes7TextController?.dispose();

    txfLimite7FocusNode?.dispose();
    txfLimite7TextController?.dispose();

    txfOutroMotivo8FocusNode?.dispose();

    txfImpedimento8FocusNode?.dispose();
    txfImpedimento8TextController?.dispose();

    txtFoto8FocusNode?.dispose();
    txtFoto8TextController?.dispose();

    txfAcoes8FocusNode?.dispose();
    txfAcoes8TextController?.dispose();

    txfLimite8FocusNode?.dispose();
    txfLimite8TextController?.dispose();

    txfOutroMotivo9FocusNode?.dispose();

    txfImpedimento9FocusNode?.dispose();
    txfImpedimento9TextController?.dispose();

    txtFoto9FocusNode?.dispose();
    txtFoto9TextController?.dispose();

    txfAcoes9FocusNode?.dispose();
    txfAcoes9TextController?.dispose();

    txfLimite9FocusNode?.dispose();
    txfLimite9TextController?.dispose();

    txfOutroMotivo10FocusNode?.dispose();

    txfImpedimento10FocusNode?.dispose();
    txfImpedimento10TextController?.dispose();

    txtFoto10FocusNode?.dispose();
    txtFoto10TextController?.dispose();

    txfAcoes10FocusNode?.dispose();
    txfAcoes10TextController?.dispose();

    txfLimite10FocusNode?.dispose();
    txfLimite10TextController?.dispose();
  }
}
