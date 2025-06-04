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

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import '/flutter_flow/uploaded_file.dart';

Future<void> gerarPDF2Copy(
  String? txfResponsavel,
  String? txfCliente,
  String? txfData,
  String? txfLocal,
  String? logoUrl,
  String? tipoInspecao1,
  String? equipamento1,
  bool? impeditivo1,
  String? motivo1,
  String? imagemUrl1,
  String? descricaoFoto1,
  String? descricaoAcao1,
  String? prazo1,
  String? status1,
  String? tipoInspecao2,
  String? equipamento2,
  bool? impeditivo2,
  String? motivo2,
  String? imagemUrl2,
  String? descricaoFoto2,
  String? descricaoAcao2,
  String? prazo2,
  String? status2,
  String? tipoInspecao3,
  String? equipamento3,
  bool? impeditivo3,
  String? motivo3,
  String? imagemUrl3,
  String? descricaoFoto3,
  String? descricaoAcao3,
  String? prazo3,
  String? status3,
  String? tipoInspecao4,
  String? equipamento4,
  bool? impeditivo4,
  String? motivo4,
  String? imagemUrl4,
  String? descricaoFoto4,
  String? descricaoAcao4,
  String? prazo4,
  String? status4,
  String? tipoInspecao5,
  String? equipamento5,
  bool? impeditivo5,
  String? motivo5,
  String? imagemUrl5,
  String? descricaoFoto5,
  String? descricaoAcao5,
  String? prazo5,
  String? status5,
  String? tipoInspecao6,
  String? equipamento6,
  bool? impeditivo6,
  String? motivo6,
  String? imagemUrl6,
  String? descricaoFoto6,
  String? descricaoAcao6,
  String? prazo6,
  String? status6,
  String? tipoInspecao7,
  String? equipamento7,
  bool? impeditivo7,
  String? motivo7,
  String? imagemUrl7,
  String? descricaoFoto7,
  String? descricaoAcao7,
  String? prazo7,
  String? status7,
  String? tipoInspecao8,
  String? equipamento8,
  bool? impeditivo8,
  String? motivo8,
  String? imagemUrl8,
  String? descricaoFoto8,
  String? descricaoAcao8,
  String? prazo8,
  String? status8,
  String? tipoInspecao9,
  String? equipamento9,
  bool? impeditivo9,
  String? motivo9,
  String? imagemUrl9,
  String? descricaoFoto9,
  String? descricaoAcao9,
  String? prazo9,
  String? status9,
  String? tipoInspecao10,
  String? equipamento10,
  bool? impeditivo10,
  String? motivo10,
  String? imagemUrl10,
  String? descricaoFoto10,
  String? descricaoAcao10,
  String? prazo10,
  String? status10,
  FFUploadedFile? imagem1Offline,
  FFUploadedFile? imagem2Offline,
  FFUploadedFile? imagem3Offline,
  FFUploadedFile? imagem4Offline,
  FFUploadedFile? imagem5Offline,
  FFUploadedFile? imagem6Offline,
  FFUploadedFile? imagem7Offline,
  FFUploadedFile? imagem8Offline,
  FFUploadedFile? imagem9Offline,
  FFUploadedFile? imagem10Offline,
) async {
  final pdf = pw.Document();

  final imageOnlineFutures = [
    _baixarImagem(imagemUrl1),
    _baixarImagem(imagemUrl2),
    _baixarImagem(imagemUrl3),
    _baixarImagem(imagemUrl4),
    _baixarImagem(imagemUrl5),
    _baixarImagem(imagemUrl6),
    _baixarImagem(imagemUrl7),
    _baixarImagem(imagemUrl8),
    _baixarImagem(imagemUrl9),
    _baixarImagem(imagemUrl10),
  ];
  final imageOnlineBytesList = await Future.wait(imageOnlineFutures);

  Uint8List? _selecionarImagemParaPdf(
      Uint8List? online, FFUploadedFile? offline) {
    return online ??
        offline
            ?.bytes; // Retorna a imagem online ou a offline se a online for nula
  }

  bool _blocoTemConteudoReal(List<dynamic> bloco) {
    final equipamentoDefault = bloco[1] == "Não informado" ||
        bloco[1] == null ||
        (bloco[1] as String).isEmpty;
    final impeditivoDefault = bloco[2] == null || bloco[2] == false;
    final statusDefault = bloco[8] == "Não informado" ||
        bloco[8] == null ||
        (bloco[8] as String).isEmpty;

    return ((bloco[0] != null && (bloco[0] as String).isNotEmpty) ||
        (!equipamentoDefault) ||
        (bloco[2] == true) ||
        (bloco[3] != null && (bloco[3] as String).isNotEmpty) ||
        (bloco[4] != null && (bloco[4] as Uint8List).isNotEmpty) ||
        (bloco[5] != null && (bloco[5] as String).isNotEmpty) ||
        (bloco[6] != null && (bloco[6] as String).isNotEmpty) ||
        (bloco[7] != null && (bloco[7] as String).isNotEmpty) ||
        (!statusDefault));
  }

  final blocos = [
    [
      tipoInspecao1,
      equipamento1,
      impeditivo1,
      motivo1,
      _selecionarImagemParaPdf(imageOnlineBytesList[0], imagem1Offline),
      descricaoFoto1,
      descricaoAcao1,
      prazo1,
      status1,
    ],
    [
      tipoInspecao2,
      equipamento2,
      impeditivo2,
      motivo2,
      _selecionarImagemParaPdf(imageOnlineBytesList[1], imagem2Offline),
      descricaoFoto2,
      descricaoAcao2,
      prazo2,
      status2,
    ],
    [
      tipoInspecao3,
      equipamento3,
      impeditivo3,
      motivo3,
      _selecionarImagemParaPdf(imageOnlineBytesList[2], imagem3Offline),
      descricaoFoto3,
      descricaoAcao3,
      prazo3,
      status3,
    ],
    [
      tipoInspecao4,
      equipamento4,
      impeditivo4,
      motivo4,
      _selecionarImagemParaPdf(imageOnlineBytesList[3], imagem4Offline),
      descricaoFoto4,
      descricaoAcao4,
      prazo4,
      status4,
    ],
    [
      tipoInspecao5,
      equipamento5,
      impeditivo5,
      motivo5,
      _selecionarImagemParaPdf(imageOnlineBytesList[4], imagem5Offline),
      descricaoFoto5,
      descricaoAcao5,
      prazo5,
      status5,
    ],
    [
      tipoInspecao6,
      equipamento6,
      impeditivo6,
      motivo6,
      _selecionarImagemParaPdf(imageOnlineBytesList[5], imagem6Offline),
      descricaoFoto6,
      descricaoAcao6,
      prazo6,
      status6,
    ],
    [
      tipoInspecao7,
      equipamento7,
      impeditivo7,
      motivo7,
      _selecionarImagemParaPdf(imageOnlineBytesList[6], imagem7Offline),
      descricaoFoto7,
      descricaoAcao7,
      prazo7,
      status7,
    ],
    [
      tipoInspecao8,
      equipamento8,
      impeditivo8,
      motivo8,
      _selecionarImagemParaPdf(imageOnlineBytesList[7], imagem8Offline),
      descricaoFoto8,
      descricaoAcao8,
      prazo8,
      status8,
    ],
    [
      tipoInspecao9,
      equipamento9,
      impeditivo9,
      motivo9,
      _selecionarImagemParaPdf(imageOnlineBytesList[8], imagem9Offline),
      descricaoFoto9,
      descricaoAcao9,
      prazo9,
      status9,
    ],
    [
      tipoInspecao10,
      equipamento10,
      impeditivo10,
      motivo10,
      _selecionarImagemParaPdf(imageOnlineBytesList[9], imagem10Offline),
      descricaoFoto10,
      descricaoAcao10,
      prazo10,
      status10,
    ],
  ];

  final blocosValidos = blocos.where(_blocoTemConteudoReal).toList();

  final cabecalho = await _buildCabecalhoComLogo(
    txfResponsavel,
    txfCliente,
    txfData,
    txfLocal,
  );
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Padding(
          padding: const pw.EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
            bottom: 10,
          ),
          child: pw.Column(
            children: [
              cabecalho,
              pw.SizedBox(height: 12),
              ...blocosValidos.take(2).map(
                    (bloco) => pw.Column(
                      children: [
                        _buildBlocoInspecao(bloco),
                        if (bloco != blocosValidos.take(2).last)
                          pw.SizedBox(height: 7),
                      ],
                    ),
                  ),
            ],
          ),
        );
      },
    ),
  );

  for (var i = 2; i < blocosValidos.length; i += 2) {
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Padding(
            padding: const pw.EdgeInsets.only(
              top: 10,
              left: 15,
              right: 15,
              bottom: 10,
            ),
            child: pw.Column(
              children: [
                ...blocosValidos.skip(i).take(2).map(
                      (bloco) => pw.Column(
                        children: [
                          _buildBlocoInspecao(bloco),
                          if (bloco != blocosValidos.skip(i).take(2).last)
                            pw.SizedBox(height: 7),
                        ],
                      ),
                    ),
              ],
            ),
          );
        },
      ),
    );
  }

  await Printing.layoutPdf(onLayout: (format) async => pdf.save());
}

Future<pw.Widget> _buildCabecalhoComLogo(
  String? responsavel,
  String? cliente,
  String? data,
  String? local,
) async {
  // 1. Carrega a logo do asset diretamente
  Uint8List? logoBytes;
  try {
    final ByteData assetData =
        await rootBundle.load('assets/images/app_launcher_icon.png');
    logoBytes = assetData.buffer.asUint8List();
  } catch (e) {
    print("Erro ao carregar logo do asset: $e");
  }

  return pw.Stack(
    children: [
      pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              if (logoBytes != null)
                pw.Container(
                  width: 80,
                  height: 80,
                  margin: const pw.EdgeInsets.only(bottom: 5),
                  child: pw.Image(
                    pw.MemoryImage(logoBytes),
                    fit: pw.BoxFit.contain,
                  ),
                ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(left: 5, top: 5),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    _buildInfo('Responsável', responsavel),
                    _buildInfo('Cliente', cliente),
                    _buildInfo('Data', data),
                    _buildInfo('Local', local),
                  ],
                ),
              ),
            ],
          ),
          pw.SizedBox(width: 20),
        ],
      ),
      pw.Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: pw.Center(
          child: pw.Text(
            'Formulário de Inspeção SSMA',
            style: pw.TextStyle(
              fontSize: 18,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
        ),
      ),
    ],
  );
}

pw.Widget _buildInfo(String label, String? value) {
  return pw.Padding(
    padding: const pw.EdgeInsets.only(bottom: 5),
    child: pw.Text('$label: ${value ?? "Não informado"}',
        style: const pw.TextStyle(fontSize: 12)),
  );
}

pw.Widget _buildTextCentralizado(String label, String? value) {
  return pw.Center(
    child: pw.Text('$label: ${value ?? "Não informado"}',
        style: pw.TextStyle(fontSize: 13)),
  );
}

pw.Widget _buildText(String label, String? value) {
  return pw.Text('$label: ${value ?? "Não informado"}',
      style: pw.TextStyle(fontSize: 13));
}

pw.Widget _buildBlocoInspecao(List<dynamic> bloco) {
  final imageBytes = bloco[4] as Uint8List?;

  return pw.Container(
    width: double.infinity,
    margin: const pw.EdgeInsets.only(bottom: 8),
    padding: const pw.EdgeInsets.all(8),
    decoration: pw.BoxDecoration(
      border: pw.Border.all(color: PdfColors.black, width: 0.5),
      borderRadius: pw.BorderRadius.circular(4),
    ),
    child: pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Center(
          child: pw.Column(
            children: [
              pw.Text('Tipo de Inspeção:',
                  style: pw.TextStyle(
                    fontSize: 12,
                    fontWeight: pw.FontWeight.bold,
                  )),
              pw.Text(bloco[0]?.toString() ?? "Não informado",
                  style: pw.TextStyle(fontSize: 12)),
            ],
          ),
        ),
        pw.Divider(height: 0.5, thickness: 0.5, color: PdfColors.black),
        pw.SizedBox(height: 4),
        _buildLinhaCompacta('Equipamento:', bloco[1]),
        _buildLinhaCompacta(
            'Item Impeditivo:', bloco[2] == true ? "Sim" : "Não"),
        if (bloco[2] == true)
          _buildLinhaCompacta('Motivo do Impedimento:', bloco[3]),
        if (imageBytes != null && imageBytes.isNotEmpty)
          pw.Column(
            children: [
              pw.Image(pw.MemoryImage(imageBytes),
                  width: 250, height: 120, fit: pw.BoxFit.cover),
              pw.SizedBox(height: 4),
              _buildLinhaCompacta('Descrição da Foto:', bloco[5]),
              _buildLinhaCompacta('Descrição das Ações:', bloco[6]),
            ],
          ),
        _buildLinhaCompacta('Prazo Limite:', bloco[7]),
        _buildLinhaCompacta('Status:', bloco[8]),
      ],
    ),
  );
}

pw.Widget _buildLinhaCompacta(String label, dynamic value) {
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(label,
              style: pw.TextStyle(
                fontSize: 11,
                fontWeight: pw.FontWeight.bold,
              )),
          pw.SizedBox(width: 3),
          pw.Expanded(
            child: pw.Text(value?.toString() ?? "Não informado",
                style: pw.TextStyle(fontSize: 11)),
          ),
        ],
      ),
      pw.Divider(height: 0.5, thickness: 0.5, color: PdfColors.grey),
      pw.SizedBox(height: 3),
    ],
  );
}

pw.Widget _buildLinhaComDivisor(String label, dynamic value) {
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(label,
              style: pw.TextStyle(
                fontSize: 13,
                fontWeight: pw.FontWeight.bold,
              )),
          pw.SizedBox(width: 5),
          pw.Expanded(
            child: pw.Text(value?.toString() ?? "Não informado",
                style: pw.TextStyle(fontSize: 13)),
          ),
        ],
      ),
      pw.Divider(height: 1, thickness: 1, color: PdfColors.black),
      pw.SizedBox(height: 8),
    ],
  );
}

Future<Uint8List?> _baixarImagem(String? url) async {
  if (url == null || url.isEmpty) return null;
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) return response.bodyBytes;
  } catch (e) {
    print("Erro ao baixar imagem: $e");
  }
  return null;
}
