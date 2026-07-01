import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/editar/editar_comprovante_notifier.dart';

import '../../../../../common/components/custom_buttom_component.dart';
import '../../../../../common/components/custom_textfiewd_component.dart';

class EditarComprovanteScreen extends ConsumerStatefulWidget {
  final String comprovanteId;

  const EditarComprovanteScreen({super.key, required this.comprovanteId,});

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

              CustomTextFormFiewdComponent(
                controller: _assinaturaController,
                textImputType: TextInputType.text,
                label: 'Assinatura',
                erro: state.assinaturaErro,
                onChanged: notifier.onAssinaturaChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                controller: _fotoController,
                textImputType: TextInputType.text,
                label: 'Foto',
                erro: state.fotoErro,
                onChanged: notifier.onFotoChanged,
              ),
              const SizedBox(height: 12),

              CustomButtonComponent(text: 'Salvar', onClick: () => notifier.editarComprovante()),
            ],
          ),
        ),
      ),
    );
  }
}