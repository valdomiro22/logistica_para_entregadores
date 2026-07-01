import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/editar/editar_cliente_notifier.dart';
import 'package:logistica_entregador/route/app_routes_names.dart';

import '../../../../../common/components/carregando_component.dart';
import '../../../../../common/components/custom_buttom_component.dart';
import '../../../../../common/components/custom_textfiewd_component.dart';

class EditarClienteScreen extends ConsumerStatefulWidget {
  final String clienteId;

  const EditarClienteScreen({super.key, required this.clienteId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditarClienteScreenState();
}

class _EditarClienteScreenState extends ConsumerState<EditarClienteScreen> {
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _observacaoController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(editarClienteProvider.notifier).buscarCliente(widget.clienteId);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nomeController.dispose();
    _telefoneController.dispose();
    _emailController.dispose();
    _observacaoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(editarClienteProvider);
    final notifier = ref.watch(editarClienteProvider.notifier);

    ref.listen(editarClienteProvider, (previous, next) {
      if (previous?.id != next.id && next.id.isNotEmpty) {
        _nomeController.text = next.nome;
        _telefoneController.text = next.telefone;
        _emailController.text = next.email;
        _observacaoController.text = next.observacao ?? '';
      }

      if (next.isSuccess && previous?.isSuccess != true) {
        ref.read(editarClienteProvider.notifier).limpar();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Adicionar Cliente')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(height: 6),

              CustomTextFormFiewdComponent(
                controller: _nomeController,
                textImputType: TextInputType.text,
                erro: state.nomeErro,
                label: 'Nome',
                onFocus: true,
                onChanged: notifier.onNomeChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                controller: _telefoneController,
                textImputType: TextInputType.text,
                erro: state.telefoneErro,
                label: 'Telefone',
                onChanged: notifier.onTelefoneChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                controller: _emailController,
                textImputType: TextInputType.text,
                erro: state.emailErro,
                label: 'E-mail',
                onChanged: notifier.onEmailChanged,
              ),
              const SizedBox(height: 16),

              CustomTextFormFiewdComponent(
                controller: _observacaoController,
                textImputType: TextInputType.text,
                label: 'Observação',
                onChanged: notifier.onObservacaoChanged,
              ),
              const SizedBox(height: 16),

              CustomButtonComponent(text: 'Endereços', onClick: () {
                context.push('${AppRoutesNames.listaEnderecos}/${widget.clienteId}');
              }),
              const SizedBox(height: 16),

              CustomButtonComponent(text: 'Salvar', onClick: () => notifier.editarCliente()),

              if (state.isLoading) CarregandoComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
