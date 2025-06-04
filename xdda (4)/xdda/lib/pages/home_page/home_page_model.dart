import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - checkConnection2] action in HomePage widget.
  bool? estaConectado;
  // State field(s) for txfUser widget.
  FocusNode? txfUserFocusNode;
  TextEditingController? txfUserTextController;
  String? Function(BuildContext, String?)? txfUserTextControllerValidator;
  // State field(s) for txfSenha widget.
  FocusNode? txfSenhaFocusNode;
  TextEditingController? txfSenhaTextController;
  late bool txfSenhaVisibility;
  String? Function(BuildContext, String?)? txfSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txfSenhaVisibility = false;
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    txfUserFocusNode?.dispose();
    txfUserTextController?.dispose();

    txfSenhaFocusNode?.dispose();
    txfSenhaTextController?.dispose();
  }
}
