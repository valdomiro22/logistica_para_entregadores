import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

import 'gerar_pdf.dart';

class VisualizarPdfScreen extends StatelessWidget {
  const VisualizarPdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pdfService = PdfService();

    return Scaffold(
      appBar: AppBar(title: const Text('Comprovante de entrega')),
      body: PdfPreview(
        build: (format) async {
          try {
            final bytes = await pdfService.gerarRelatorioClientes(
              idPedido: 'idPedito',
              nomeCliente: 'Valdomiro',
              enderecoEntrega: 'sdfasd',
              nomeEntregador: 'asdf',
              dataEntrega: 'asf',
              horarioEntrega: 'asfd',
            );

            debugPrint('PDF gerado com ${bytes.length} bytes');

            return bytes;
          } catch (e, stackTrace) {
            debugPrint('Erro ao gerar PDF: $e');
            debugPrint(stackTrace.toString());
            rethrow;
          }
        },
      ),
    );
  }
}
