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

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'dart:typed_data';

Future<void> gerarPDF(
  String? txfResponsavel,
  String? txfData,
  String? txfLocal,
  String? dpdEquipamento,
  String? dpdInspecao,
  String? txfAcoes,
  String? txfMedida,
  String? txfLimite,
  String? dpdStatus,
  String? txfImpedimento,
  String? impedimento,
  FFUploadedFile? image1,
  FFUploadedFile? image2,
  FFUploadedFile? image3,
  FFUploadedFile? image4,
  FFUploadedFile? image5,
  FFUploadedFile? image6,
  FFUploadedFile? image7,
  FFUploadedFile? image8,
  FFUploadedFile? image9,
  FFUploadedFile? image10,
  String? txtFoto1,
  String? txtFoto2,
  String? txtFoto3,
  String? txtFoto4,
  String? txtFoto5,
  String? txtFoto6,
  String? txtFoto7,
  String? txtFoto8,
  String? txtFoto9,
  String? txtFoto10,
  String? txtAcao1,
  String? txtAcao2,
  String? txtAcao3,
  String? txtAcao4,
  String? txtAcao5,
  String? txtAcao6,
  String? txtAcao7,
  String? txtAcao8,
  String? txtAcao9,
  String? txtAcao10,
) async {
  final pdf = pw.Document();

  final imagens = [
    {'image': image1, 'caption': txtFoto1, 'action': txtAcao1},
    {'image': image2, 'caption': txtFoto2, 'action': txtAcao2},
    {'image': image3, 'caption': txtFoto3, 'action': txtAcao3},
    {'image': image4, 'caption': txtFoto4, 'action': txtAcao4},
    {'image': image5, 'caption': txtFoto5, 'action': txtAcao5},
    {'image': image6, 'caption': txtFoto6, 'action': txtAcao6},
    {'image': image7, 'caption': txtFoto7, 'action': txtAcao7},
    {'image': image8, 'caption': txtFoto8, 'action': txtAcao8},
    {'image': image9, 'caption': txtFoto9, 'action': txtAcao9},
    {'image': image10, 'caption': txtFoto10, 'action': txtAcao10},
  ]
      .where((img) =>
          img['image'] != null &&
          (img['image'] as FFUploadedFile).bytes?.isNotEmpty == true)
      .toList();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Container(
          width: double.infinity,
          height: double.infinity,
          color: PdfColor.fromInt(0xFFD2B48C), // Define o fundo da página
          padding: const pw.EdgeInsets.all(20),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                'Relatório de Inspeção',
                style:
                    pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 20),
              _buildText('Responsável', txfResponsavel),
              _buildText('Data', txfData),
              _buildText('Local', txfLocal),
              _buildText('Houve impedimento', impedimento),
              _buildText('Qual impedimento', txfImpedimento),
              _buildText('Equipamento', dpdEquipamento),
              _buildText('Tipo de Inspeção', dpdInspecao),
              _buildText('Ações recomendadas', txfAcoes),
              _buildText('Limite de operação', txfLimite),
              _buildText('Status', dpdStatus),
              pw.SizedBox(height: 20),
              pw.Text(
                'As imagens serão exibidas nas próximas páginas.',
                style:
                    pw.TextStyle(fontSize: 12, fontStyle: pw.FontStyle.italic),
              ),
            ],
          ),
        );
      },
    ),
  );

  // 🔹 Criando páginas de imagens (3 por página) com cor de fundo aplicada corretamente
  for (var i = 0; i < imagens.length; i += 3) {
    List<pw.Widget> imageWidgets = [];

    for (var j = i; j < i + 3 && j < imagens.length; j++) {
      final imageFile = imagens[j]['image'] as FFUploadedFile?;
      final caption = imagens[j]['caption'] as String?;
      final actionDesc = imagens[j]['action'] as String?;

      imageWidgets.add(_buildImageWidget(imageFile, caption, actionDesc));
    }

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Container(
            width: double.infinity,
            height: double.infinity,
            color: PdfColor.fromInt(
                0xFFD2B48C), // 🔹 Cor de fundo aplicada corretamente
            child: pw.Padding(
              padding: const pw.EdgeInsets.all(20),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: imageWidgets,
              ),
            ),
          );
        },
      ),
    );
  }

  // 🔹 Gerar PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}

pw.Widget _buildText(String label, String? value) {
  return pw.Padding(
    padding: const pw.EdgeInsets.only(bottom: 10),
    child: pw.Text(
      '$label: ${value ?? "Não informado"}',
      style: pw.TextStyle(fontSize: 16),
    ),
  );
}

pw.Widget _buildImageWidget(
    FFUploadedFile? image, String? caption, String? actionDesc) {
  return pw.Padding(
    padding: const pw.EdgeInsets.only(bottom: 10),
    child: pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Container(
          width: 200,
          height: 130,
          decoration: pw.BoxDecoration(
            border: pw.Border.all(color: PdfColors.black, width: 1),
          ),
          child: image != null && image.bytes != null && image.bytes!.isNotEmpty
              ? pw.Image(pw.MemoryImage(image.bytes!), fit: pw.BoxFit.cover)
              : pw.Center(child: pw.Text("Imagem não disponível")),
        ),
        pw.SizedBox(height: 5),
        pw.Text(caption ?? "Sem legenda"),
        pw.SizedBox(height: 5),
        pw.Text(actionDesc ?? "Sem descrição de ação"),
      ],
    ),
  );
}
