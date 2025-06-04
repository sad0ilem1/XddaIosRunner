import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_page_offline_model.dart';
export 'list_page_offline_model.dart';

class ListPageOfflineWidget extends StatefulWidget {
  const ListPageOfflineWidget({super.key});

  static String routeName = 'ListPageOffline';
  static String routePath = '/listPageOffline';

  @override
  State<ListPageOfflineWidget> createState() => _ListPageOfflineWidgetState();
}

class _ListPageOfflineWidgetState extends State<ListPageOfflineWidget> {
  late ListPageOfflineModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListPageOfflineModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFD2B48C),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(MainmenuUserWidget.routeName);
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xFF443926),
                      size: 32.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 19000.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFD2B48C),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Registros',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Container(
                          width: double.infinity,
                          height: () {
                            if (MediaQuery.sizeOf(context).width < 600.0) {
                              return 50.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                1200.0) {
                              return 75.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 75.0;
                            } else {
                              return 75.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: Color(0xFFA78F6F),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Responsavel',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 13.2;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 21.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 21.0;
                                            } else {
                                              return 21.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Data',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 15.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 23.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 23.0;
                                            } else {
                                              return 23.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Local',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 13.2;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 23.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 23.0;
                                            } else {
                                              return 23.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Equip',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 13.2;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 23.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 23.0;
                                            } else {
                                              return 23.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Insp',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 13.2;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 23.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 23.0;
                                            } else {
                                              return 23.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Status',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 13.2;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 21.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 21.0;
                                            } else {
                                              return 21.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                                Icon(
                                  Icons.edit,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 24.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 30.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 30.0;
                                    } else {
                                      return 30.0;
                                    }
                                  }(),
                                ),
                              ].divide(SizedBox(width: 6.0)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: FutureBuilder<List<GetInspecaoLocalRow>>(
                              future: SQLiteManager.instance.getInspecaoLocal(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final listViewGetInspecaoLocalRowList =
                                    snapshot.data!;

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  reverse: true,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listViewGetInspecaoLocalRowList.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 15.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewGetInspecaoLocalRow =
                                        listViewGetInspecaoLocalRowList[
                                            listViewIndex];
                                    return Container(
                                      width: double.infinity,
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 50.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 75.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 75.0;
                                        } else {
                                          return 75.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFA78F6F),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewGetInspecaoLocalRow
                                                      .txfResponsavel,
                                                  'x',
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 13.2;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 21.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 21.0;
                                                            } else {
                                                              return 21.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewGetInspecaoLocalRow
                                                      .txfData,
                                                  'data',
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 13.2;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 21.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 21.0;
                                                            } else {
                                                              return 21.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewGetInspecaoLocalRow
                                                      .txfLocal,
                                                  'local',
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 13.2;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 21.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 21.0;
                                                            } else {
                                                              return 21.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewGetInspecaoLocalRow
                                                      .equipamento1,
                                                  'equip',
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 13.2;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 21.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 21.0;
                                                            } else {
                                                              return 21.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewGetInspecaoLocalRow
                                                      .tipoInspecao1,
                                                  'insp',
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 13.2;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 21.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 21.0;
                                                            } else {
                                                              return 21.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewGetInspecaoLocalRow
                                                      .status1,
                                                  'status',
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 13.2;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 19.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 19.0;
                                                            } else {
                                                              return 19.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  EditPage5OfflineWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'txfResponsavel':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .txfResponsavel,
                                                      ParamType.String,
                                                    ),
                                                    'txfData': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .txfData,
                                                      ParamType.String,
                                                    ),
                                                    'id': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .id,
                                                      ParamType.int,
                                                    ),
                                                    'txfLocal': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .txfLocal,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao1':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao1,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento1':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento1,
                                                      ParamType.String,
                                                    ),
                                                    'motivo1': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo1,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto1':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto1,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao1':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao1,
                                                      ParamType.String,
                                                    ),
                                                    'prazo1': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo1,
                                                      ParamType.String,
                                                    ),
                                                    'status1': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status1,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao2':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao2,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento2':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento2,
                                                      ParamType.String,
                                                    ),
                                                    'motivo2': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo2,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto2':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto2,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao2':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao2,
                                                      ParamType.String,
                                                    ),
                                                    'prazo2': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo2,
                                                      ParamType.String,
                                                    ),
                                                    'status2': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status2,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao3':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao3,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento3':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento3,
                                                      ParamType.String,
                                                    ),
                                                    'motivo3': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo3,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto3':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto3,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao3':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao3,
                                                      ParamType.String,
                                                    ),
                                                    'prazo3': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo3,
                                                      ParamType.String,
                                                    ),
                                                    'status3': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status3,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao4':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao4,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento4':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento4,
                                                      ParamType.String,
                                                    ),
                                                    'motivo4': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo4,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto4':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto4,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao4':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao4,
                                                      ParamType.String,
                                                    ),
                                                    'prazo4': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo4,
                                                      ParamType.String,
                                                    ),
                                                    'status4': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status4,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao5':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao5,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento5':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento5,
                                                      ParamType.String,
                                                    ),
                                                    'motivo5': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo5,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto5':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto5,
                                                      ParamType.String,
                                                    ),
                                                    'prazo5': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo5,
                                                      ParamType.String,
                                                    ),
                                                    'status5': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status5,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao6':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao6,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento6':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento6,
                                                      ParamType.String,
                                                    ),
                                                    'motivo6': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo6,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto6':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto6,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao6':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao6,
                                                      ParamType.String,
                                                    ),
                                                    'prazo6': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo6,
                                                      ParamType.String,
                                                    ),
                                                    'status6': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status6,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao5':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao5,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao7':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao7,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento7':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento7,
                                                      ParamType.String,
                                                    ),
                                                    'motivo7': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo7,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto7':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto7,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao7':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao7,
                                                      ParamType.String,
                                                    ),
                                                    'prazo7': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo7,
                                                      ParamType.String,
                                                    ),
                                                    'status7': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status7,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao8':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao8,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento8':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento8,
                                                      ParamType.String,
                                                    ),
                                                    'motivo8': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo8,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto8':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto8,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao8':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao8,
                                                      ParamType.String,
                                                    ),
                                                    'prazo8': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo8,
                                                      ParamType.String,
                                                    ),
                                                    'status8': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status8,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao9':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao9,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento9':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento9,
                                                      ParamType.String,
                                                    ),
                                                    'motivo9': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo9,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto9':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto9,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao9':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao9,
                                                      ParamType.String,
                                                    ),
                                                    'prazo9': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo9,
                                                      ParamType.String,
                                                    ),
                                                    'status9': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status9,
                                                      ParamType.String,
                                                    ),
                                                    'tipoInspecao10':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .tipoInspecao10,
                                                      ParamType.String,
                                                    ),
                                                    'equipamento10':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .equipamento10,
                                                      ParamType.String,
                                                    ),
                                                    'motivo10': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .motivo10,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoFoto10':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoFoto10,
                                                      ParamType.String,
                                                    ),
                                                    'descricaoAcao10':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .descricaoAcao10,
                                                      ParamType.String,
                                                    ),
                                                    'prazo10': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .prazo10,
                                                      ParamType.String,
                                                    ),
                                                    'status10': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .status10,
                                                      ParamType.String,
                                                    ),
                                                    'campos': serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .ncampos,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento1':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo1,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento2':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo2,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento3':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo3,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento4':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo4,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento5':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo5,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento6':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo6,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento7':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo7,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento8':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo8,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento9':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo9,
                                                      ParamType.int,
                                                    ),
                                                    'impedimento10':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .impeditivo10,
                                                      ParamType.int,
                                                    ),
                                                    'txfCliente':
                                                        serializeParam(
                                                      listViewGetInspecaoLocalRow
                                                          .txfCliente,
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Icon(
                                                Icons.edit,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 24.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 30.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 30.0;
                                                  } else {
                                                    return 30.0;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 6.0)),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
