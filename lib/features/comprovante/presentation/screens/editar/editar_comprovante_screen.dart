import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/editar/editar_comprovante_notifier.dart';
import 'package:logistica_entregador/route/app_routes_names.dart';

import '../../../../../common/components/custom_buttom_component.dart';

class EditarComprovanteScreen extends ConsumerStatefulWidget {
  final String comprovanteId;

  const EditarComprovanteScreen({super.key, required this.comprovanteId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditarComprovanteScreenState();
}

class _EditarComprovanteScreenState extends ConsumerState<EditarComprovanteScreen> {
  final _assinaturaController = TextEditingController();
  final _fotoController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(editarComprovanteProvider.notifier).buscarComprovante(widget.comprovanteId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(editarComprovanteProvider);
    final notifier = ref.watch(editarComprovanteProvider.notifier);

    ref.listen(editarComprovanteProvider, (previous, next) {
      if (previous?.id != next.id && next.id.isNotEmpty) {
        _assinaturaController.text = next.assinatura;
        _fotoController.text = next.foto;
      }

      if (next.isSuccess && previous?.isSuccess != true) {
        ref.read(editarComprovanteProvider.notifier).limpar();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Editar Comprovante')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(height: 6),

              // Assinatura
              _mostrarImagem(context, title: 'Assinatura', filePath: state.assinatura),
              const SizedBox(height: 12),
              CustomButtonComponent(
                text: 'Assinar novamente',
                onClick: () => context.push(AppRoutesNames.adicionarAssinatura),
              ),
              const SizedBox(height: 24),

              // Foto
              _mostrarImagem(context, title: 'Foto', filePath: state.foto),
              const SizedBox(height: 12),
              CustomButtonComponent(
                text: 'Trocar foto',
                onClick: () => context.push(AppRoutesNames.tirarFoto),
              ),
              const SizedBox(height: 16),

              CustomButtonComponent(text: 'Salvar', onClick: () => notifier.editarComprovante()),
            ],
          ),
        ),
      ),
    );
  }
}

  Widget _mostrarImagem(BuildContext context, {required String title, required String filePath}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          clipBehavior: Clip.antiAlias,
          child: Image.file(
            File(filePath),
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 220,
                color: Colors.grey[200],
                child: const Center(
                  child: Icon(Icons.broken_image, size: 48, color: Colors.grey),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

