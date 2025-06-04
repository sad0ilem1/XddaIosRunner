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

// Imports necessários
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:http/http.dart' as http;
import 'dart:typed_data';

Future<void> gerarPDF3(
  String? txfResponsavel,
  String? txfData,
  String? txfLocal,

  // 🔹 Campos individuais para cada inspeção (10 blocos)
  String? tipoInspecao1,
  String? tipoInspecao2,
  String? tipoInspecao3,
  String? tipoInspecao4,
  String? tipoInspecao5,
  String? tipoInspecao6,
  String? tipoInspecao7,
  String? tipoInspecao8,
  String? tipoInspecao9,
  String? tipoInspecao10,
  String? equipamento1,
  String? equipamento2,
  String? equipamento3,
  String? equipamento4,
  String? equipamento5,
  String? equipamento6,
  String? equipamento7,
  String? equipamento8,
  String? equipamento9,
  String? equipamento10,
  bool? impeditivo1,
  bool? impeditivo2,
  bool? impeditivo3,
  bool? impeditivo4,
  bool? impeditivo5,
  bool? impeditivo6,
  bool? impeditivo7,
  bool? impeditivo8,
  bool? impeditivo9,
  bool? impeditivo10,
  String? motivo1,
  String? motivo2,
  String? motivo3,
  String? motivo4,
  String? motivo5,
  String? motivo6,
  String? motivo7,
  String? motivo8,
  String? motivo9,
  String? motivo10,
  String? imagemUrl1,
  String? imagemUrl2,
  String? imagemUrl3,
  String? imagemUrl4,
  String? imagemUrl5,
  String? imagemUrl6,
  String? imagemUrl7,
  String? imagemUrl8,
  String? imagemUrl9,
  String? imagemUrl10,
  String? descricaoFoto1,
  String? descricaoFoto2,
  String? descricaoFoto3,
  String? descricaoFoto4,
  String? descricaoFoto5,
  String? descricaoFoto6,
  String? descricaoFoto7,
  String? descricaoFoto8,
  String? descricaoFoto9,
  String? descricaoFoto10,
  String? descricaoAcao1,
  String? descricaoAcao2,
  String? descricaoAcao3,
  String? descricaoAcao4,
  String? descricaoAcao5,
  String? descricaoAcao6,
  String? descricaoAcao7,
  String? descricaoAcao8,
  String? descricaoAcao9,
  String? descricaoAcao10,
  String? prazo1,
  String? prazo2,
  String? prazo3,
  String? prazo4,
  String? prazo5,
  String? prazo6,
  String? prazo7,
  String? prazo8,
  String? prazo9,
  String? prazo10,
  String? status1,
  String? status2,
  String? status3,
  String? status4,
  String? status5,
  String? status6,
  String? status7,
  String? status8,
  String? status9,
  String? status10,
) async {
  final pdf = pw.Document();

  // 🔹 Lista de blocos de inspeção
  final blocos = [
    [
      tipoInspecao1,
      equipamento1,
      impeditivo1,
      motivo1,
      imagemUrl1,
      descricaoFoto1,
      descricaoAcao1,
      prazo1,
      status1
    ],
    [
      tipoInspecao2,
      equipamento2,
      impeditivo2,
      motivo2,
      imagemUrl2,
      descricaoFoto2,
      descricaoAcao2,
      prazo2,
      status2
    ],
    [
      tipoInspecao3,
      equipamento3,
      impeditivo3,
      motivo3,
      imagemUrl3,
      descricaoFoto3,
      descricaoAcao3,
      prazo3,
      status3
    ],
    [
      tipoInspecao4,
      equipamento4,
      impeditivo4,
      motivo4,
      imagemUrl4,
      descricaoFoto4,
      descricaoAcao4,
      prazo4,
      status4
    ],
    [
      tipoInspecao5,
      equipamento5,
      impeditivo5,
      motivo5,
      imagemUrl5,
      descricaoFoto5,
      descricaoAcao5,
      prazo5,
      status5
    ],
    [
      tipoInspecao6,
      equipamento6,
      impeditivo6,
      motivo6,
      imagemUrl6,
      descricaoFoto6,
      descricaoAcao6,
      prazo6,
      status6
    ],
    [
      tipoInspecao7,
      equipamento7,
      impeditivo7,
      motivo7,
      imagemUrl7,
      descricaoFoto7,
      descricaoAcao7,
      prazo7,
      status7
    ],
    [
      tipoInspecao8,
      equipamento8,
      impeditivo8,
      motivo8,
      imagemUrl8,
      descricaoFoto8,
      descricaoAcao8,
      prazo8,
      status8
    ],
    [
      tipoInspecao9,
      equipamento9,
      impeditivo9,
      motivo9,
      imagemUrl9,
      descricaoFoto9,
      descricaoAcao9,
      prazo9,
      status9
    ],
    [
      tipoInspecao10,
      equipamento10,
      impeditivo10,
      motivo10,
      imagemUrl10,
      descricaoFoto10,
      descricaoAcao10,
      prazo10,
      status10
    ],
  ];

  final blocosValidos =
      blocos.where((bloco) => bloco.any((item) => item != null)).toList();

  // 🔹 Adiciona a primeira página com informações iniciais + 2 blocos
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('Relatório de Inspeção',
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
            _buildText('Responsável', txfResponsavel),
            _buildText('Data', txfData),
            _buildText('Local', txfLocal),
            pw.SizedBox(height: 20),
            if (blocosValidos.isNotEmpty) _buildBlocoInspecao(blocosValidos[0]),
            if (blocosValidos.length > 1) ...[
              pw.SizedBox(height: 20),
              _buildBlocoInspecao(blocosValidos[1])
            ],
          ],
        );
      },
    ),
  );

  // 🔹 Páginas seguintes com 2 blocos por página
  for (var i = 2; i < blocosValidos.length; i += 2) {
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              _buildBlocoInspecao(blocosValidos[i]),
              if (i + 1 < blocosValidos.length) ...[
                pw.SizedBox(height: 20),
                _buildBlocoInspecao(blocosValidos[i + 1])
              ],
            ],
          );
        },
      ),
    );
  }

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}

// 🔹 Função para carregar imagem da URL
Future<Uint8List?> carregarImagem(String? url) async {
  if (url == null || url.isEmpty) return null;
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return response.bodyBytes;
  }
  return null;
}

// 🔹 Função para exibir um bloco completo de inspeção
pw.Widget _buildBlocoInspecao(List<dynamic> bloco) {
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      _buildText('Tipo de Inspeção', bloco[0]),
      _buildText('Equipamento', bloco[1]),
      _buildText('Item Impeditivo', bloco[2] == true ? "Sim" : "Não"),
      if (bloco[4] != null)
        pw.Image(pw.MemoryImage(carregarImagem(bloco[4]) as Uint8List)),
      _buildText('Descrição da Foto', bloco[5]),
      _buildText('Descrição das Ações', bloco[6]),
    ],
  );
}

// 🔹 Função auxiliar para exibir textos
pw.Widget _buildText(String label, String? value) {
  return pw.Text('$label: ${value ?? "Não informado"}',
      style: pw.TextStyle(fontSize: 14));
}
