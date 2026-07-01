import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/editar/editar_cliente_notifier.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/editar/editar_comprovante_notifier.dart';
import 'package:logistica_entregador/theme/button_style.dart';

import '../comprovante/presentation/screens/adicionar/adicionar_comprovante_notifier.dart';

class TirarFotoScreen extends ConsumerStatefulWidget {
  const TirarFotoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TirarFotoScreenState();
}

class _TirarFotoScreenState extends ConsumerState<TirarFotoScreen> {
  final ImagePicker _picker = ImagePicker();
  File? foto;

  Future<void> tirarFoto() async {
    try {
      final XFile? imagem = await _picker.pickImage(source: ImageSource.camera, imageQuality: 80);

      if (imagem == null) return;

      ref.read(adicionarComprovanteProvider.notifier).onFotoChanged(imagem.path);
      ref.read(editarComprovanteProvider.notifier).onFotoChanged(imagem.path);

      setState(() {
        foto = File(imagem.path);
      });
    } catch (e) {
      debugPrint('Erro ao tirar foto: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tirar foto')),
      body: Column(
        children: [
          if (foto != null)
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      foto!,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: tirarFoto,
                        style: botaoAzul,
                        child: const Text('Tirar outra foto'),
                      ),
                      const SizedBox(width: 24),

                      ElevatedButton(
                        style: botaoVerde,
                        onPressed: tirarFoto,
                        child: const Text('Salvar'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          else
            SizedBox(
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Text('Nenhuma foto'),
                    ElevatedButton(onPressed: tirarFoto, child: const Text('Tirar outra foto')),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
