import 'dart:convert'; // Importante: necessário para o base64Decode
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfService {
  Future<Uint8List> gerarRelatorioClientes({
    required String idPedido,
    required String nomeCliente,
    required String enderecoEntrega,
    required String nomeEntregador,
    required String dataEntrega,
    required String horarioEntrega,
    String? assinaturaString, // Alterado para String
    String? fotoPacoteString, // Alterado para String
  }) async {
    final pdf = pw.Document();

    // Definição de cores para o tema do app
    final azulEscuro = PdfColor.fromHex('#1A365D');
    final cinzaClaro = PdfColor.fromHex('#F7FAFC');
    final cinzaTexto = PdfColor.fromHex('#4A5568');
    final bordaCor = PdfColor.fromHex('#E2E8F0');

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (context) {
          return [
            // --- CABEÇALHO ---
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'COMPROVANTE DE ENTREGA',
                      style: pw.TextStyle(
                        fontSize: 22,
                        fontWeight: pw.FontWeight.bold,
                        color: azulEscuro,
                      ),
                    ),
                    pw.SizedBox(height: 4),
                    pw.Text(
                      'Recibo oficial de finalização de rota',
                      style: pw.TextStyle(fontSize: 10, color: cinzaTexto),
                    ),
                  ],
                ),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      'PEDIDO',
                      style: pw.TextStyle(
                        fontSize: 9,
                        fontWeight: pw.FontWeight.bold,
                        color: cinzaTexto,
                      ),
                    ),
                    pw.Text(
                      '#$idPedido',
                      style: pw.TextStyle(
                        fontSize: 14,
                        fontWeight: pw.FontWeight.bold,
                        color: azulEscuro,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(height: 15),
            pw.Divider(color: bordaCor, thickness: 1.5),
            pw.SizedBox(height: 15),

            // --- DETALHES DA ENTREGA ---
            pw.Text(
              'Informações da Entrega',
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold, color: azulEscuro),
            ),
            pw.SizedBox(height: 10),

            pw.Container(
              padding: const pw.EdgeInsets.all(12),
              decoration: pw.BoxDecoration(
                color: cinzaClaro,
                borderRadius: const pw.BorderRadius.all(pw.Radius.circular(8)),
                border: pw.Border.all(color: bordaCor),
              ),
              child: pw.Column(
                children: [
                  _itemInformacao('Cliente:', nomeCliente),
                  pw.SizedBox(height: 6),
                  _itemInformacao('Endereço:', enderecoEntrega),
                  pw.SizedBox(height: 6),
                  _itemInformacao('Entregador:', nomeEntregador),
                  pw.SizedBox(height: 6),
                  _itemInformacao('Data/Hora:', '$dataEntrega às $horarioEntrega'),
                ],
              ),
            ),

            pw.SizedBox(height: 25),

            // --- SEÇÃO DE EVIDÊNCIAS (FOTOS) ---
            pw.Text(
              'Evidências de Recebimento',
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold, color: azulEscuro),
            ),
            pw.SizedBox(height: 10),

            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                // Card da Assinatura
                pw.Expanded(
                  child: pw.Container(
                    height: 160,
                    margin: const pw.EdgeInsets.only(right: 8),
                    padding: const pw.EdgeInsets.all(8),
                    decoration: pw.BoxDecoration(
                      borderRadius: const pw.BorderRadius.all(pw.Radius.circular(8)),
                      border: pw.Border.all(color: bordaCor),
                    ),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text(
                          'Assinatura Digital',
                          style: pw.TextStyle(
                            fontSize: 10,
                            fontWeight: pw.FontWeight.bold,
                            color: cinzaTexto,
                          ),
                        ),
                        pw.Expanded(
                          child: pw.Center(
                            // Verifica se não é nulo e não está vazio
                            child: (assinaturaString != null && assinaturaString.isNotEmpty)
                                ? pw.Image(
                                    pw.MemoryImage(base64Decode(assinaturaString)),
                                    fit: pw.BoxFit.contain,
                                  )
                                : pw.Text(
                                    'Sem assinatura digital',
                                    style: pw.TextStyle(fontSize: 10, color: cinzaTexto),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Card da Foto do Pacote
                pw.Expanded(
                  child: pw.Container(
                    height: 160,
                    margin: const pw.EdgeInsets.only(left: 8),
                    padding: const pw.EdgeInsets.all(8),
                    decoration: pw.BoxDecoration(
                      borderRadius: const pw.BorderRadius.all(pw.Radius.circular(8)),
                      border: pw.Border.all(color: bordaCor),
                    ),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text(
                          'Foto do Local / Pacote',
                          style: pw.TextStyle(
                            fontSize: 10,
                            fontWeight: pw.FontWeight.bold,
                            color: cinzaTexto,
                          ),
                        ),
                        pw.Expanded(
                          child: pw.Center(
                            // Verifica se não é nulo e não está vazio
                            child: (fotoPacoteString != null && fotoPacoteString.isNotEmpty)
                                ? pw.Image(
                                    pw.MemoryImage(base64Decode(fotoPacoteString)),
                                    fit: pw.BoxFit.contain,
                                  )
                                : pw.Text(
                                    'Sem foto anexada',
                                    style: pw.TextStyle(fontSize: 10, color: cinzaTexto),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            pw.Spacer(),

            // --- RODAPÉ ---
            pw.Divider(color: bordaCor),
            pw.SizedBox(height: 5),
            pw.Center(
              child: pw.Text(
                'Este documento comprova que o pedido foi entregue em conformidade com as diretrizes do aplicativo.',
                style: pw.TextStyle(fontSize: 8, color: cinzaTexto, fontStyle: pw.FontStyle.italic),
              ),
            ),
          ];
        },
      ),
    );

    return pdf.save();
  }

  // Helper widget
  static pw.Widget _itemInformacao(String rotulo, String valor) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.SizedBox(
          width: 80,
          child: pw.Text(rotulo, style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 11)),
        ),
        pw.Expanded(child: pw.Text(valor, style: const pw.TextStyle(fontSize: 11))),
      ],
    );
  }
}
