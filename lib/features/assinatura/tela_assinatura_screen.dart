import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/adicionar/adicionar_comprovante_notifier.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/editar/editar_comprovante_notifier.dart';
import 'package:path_provider/path_provider.dart'; // Para pegar uma pasta segura do app

class TelaAssinaturaScreen extends ConsumerStatefulWidget {
  const TelaAssinaturaScreen({super.key});

  @override
  // ConsumerState<ConsumerStatefulWidget> createState() => _TelaAssinaturaScreenState();
  ConsumerState<TelaAssinaturaScreen> createState() => _TelaAssinaturaScreenState();
}

class _TelaAssinaturaScreenState extends ConsumerState<TelaAssinaturaScreen> {
  final List<Offset?> pontos = [];
  final GlobalKey assinaturaKey = GlobalKey();

  void _limparTela() {
    setState(() {
      pontos.clear();
    });
  }

  Future<String?> salvarComoImagem() async {
    try {
      if (pontos.isEmpty) {
        debugPrint('Nenhuma assinatura foi desenhada.');
        return null;
      }

      await WidgetsBinding.instance.endOfFrame;

      final renderObject = assinaturaKey.currentContext?.findRenderObject();

      if (renderObject == null) {
        throw Exception('RenderObject está null. Verifique se a key está no RepaintBoundary.');
      }

      if (renderObject is! RenderRepaintBoundary) {
        throw Exception('O renderObject não é um RenderRepaintBoundary.');
      }

      final boundary = renderObject;

      final ui.Image imagem = await boundary.toImage(pixelRatio: 3.0);
      final byteData = await imagem.toByteData(format: ui.ImageByteFormat.png);

      if (byteData == null) {
        throw Exception('byteData veio null ao converter imagem para PNG.');
      }

      final bytes = byteData.buffer.asUint8List();

      final diretorio = await getApplicationDocumentsDirectory();
      final pastaAssinaturas = Directory('${diretorio.path}/assinaturas');
      if (!await pastaAssinaturas.exists()) {
        await pastaAssinaturas.create(recursive: true);
      }

      final nomeArquivo = 'assinatura_${DateTime.now().millisecondsSinceEpoch}.png';
      final arquivo = File('${pastaAssinaturas.path}/$nomeArquivo');
      await arquivo.writeAsBytes(bytes);
      return arquivo.path;
    } catch (e, stackTrace) {
      debugPrint('_TelaAssinaturaScreenState: salvarComoImagem: Erro: $e');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  Future<void> salvarAssinatura() async {
    try {
      final caminhoImagem = await salvarComoImagem();

      if (!mounted) return;

      if (caminhoImagem == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Erro ao salvar assinatura'),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );

        debugPrint('_TelaAssinaturaScreenState: salvarAssinatura: Erro ao salvar assinatura.');
        return;
      }

      ref.read(adicionarComprovanteProvider.notifier).onAssinaturaChanged(caminhoImagem);
      ref.read(editarComprovanteProvider.notifier).onAssinaturaChanged(caminhoImagem);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Assinatura salva'),
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ),
      );

      debugPrint('Caminho para salvar no banco: $caminhoImagem');

      Navigator.pop(context);
    } catch (e, stackTrace) {
      debugPrint('_TelaAssinaturaScreenState: salvarAssinatura: Erro: $e');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // fundo branco aqui
      appBar: AppBar(
        title: const Text('Assinatura'),
        actions: [IconButton(onPressed: _limparTela, icon: const Icon(Icons.delete))],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              RepaintBoundary(
                key: assinaturaKey,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onPanStart: (details) {
                        setState(() {
                          pontos.add(details.localPosition);
                        });
                      },
                      onPanUpdate: (details) {
                        setState(() {
                          pontos.add(details.localPosition);
                        });
                      },
                      onPanEnd: (details) {
                        setState(() {
                          pontos.add(null);
                        });
                      },
                      child: CustomPaint(
                        painter: DesenhoPainter(pontos),
                        child: const SizedBox.expand(),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await salvarAssinatura();
                    },
                    child: const Text('Salvar'),
                  ),
                  const SizedBox(width: 24),
                  ElevatedButton(onPressed: _limparTela, child: const Text('Linpar')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DesenhoPainter extends CustomPainter {
  final List<Offset?> pontos;

  DesenhoPainter(this.pontos);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    for (int i = 0; i < pontos.length - 1; i++) {
      final pontoAtual = pontos[i];
      final proximoPonto = pontos[i + 1];

      if (pontoAtual != null && proximoPonto != null) {
        canvas.drawLine(pontoAtual, proximoPonto, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant DesenhoPainter oldDelegate) {
    return true;
  }
}
