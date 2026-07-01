import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/features/endereco/presentation/screens/editar/editar_endereco_notifier.dart';

import '../../../../../common/components/custom_buttom_component.dart';
import '../../../../../common/components/custom_textfiewd_component.dart';

class EditarEnderecoScreen extends ConsumerStatefulWidget {
  final String enderecoId;
  final String clienteId;

  const EditarEnderecoScreen({
    super.key,
    required this.enderecoId,
    required this.clienteId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditarEnderecoScreenState();
}

class _EditarEnderecoScreenState extends ConsumerState<EditarEnderecoScreen> {
  final _nomeController = TextEditingController();
  final _clienteIdController = TextEditingController();
  final _ruaController = TextEditingController();
  final _numeroController = TextEditingController();
  final _bairroController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _estadoController = TextEditingController();
  final _cepController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(editarEnderecoProvider.notifier).buscarEndereco(widget.enderecoId);
      ref.read(editarEnderecoProvider.notifier).onClienteIdChanged(widget.clienteId);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nomeController.dispose();
    _clienteIdController.dispose();
    _ruaController.dispose();
    _numeroController.dispose();
    _bairroController.dispose();
    _cidadeController.dispose();
    _estadoController.dispose();
    _cepController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(editarEnderecoProvider);
    final notifier = ref.read(editarEnderecoProvider.notifier);

    ref.listen(editarEnderecoProvider, (previous, next) {
      if (previous?.id != next.id && next.id.isNotEmpty) {
        _nomeController.text = next.nome;
        _clienteIdController.text = next.clienteId;
        _ruaController.text = next.rua;
        _numeroController.text = next.numero;
        _bairroController.text = next.bairro;
        _cidadeController.text = next.cidade;
        _estadoController.text = next.estado;
        _cepController.text = next.cep;
      }

      if (next.isSuccess) {
        ref.read(editarEnderecoProvider.notifier).limpar();

        if (context.canPop()) {
          context.pop();
        }
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Editar Endereço')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(height: 6),

              CustomTextFormFiewdComponent(
                controller: _nomeController,
                textImputType: TextInputType.name,
                label: 'Nome',
                erro: state.nomeErro,
                onChanged: notifier.onNomeChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                controller: _ruaController,
                textImputType: TextInputType.name,
                label: 'Rua',
                erro: state.ruaErro,
                onChanged: notifier.onRuaChanged,
              ),
              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: CustomTextFormFiewdComponent(
                      controller: _numeroController,
                      textImputType: TextInputType.number,
                      label: 'Número',
                      erro: state.numeroErro,
                      onChanged: notifier.onNumeroChanged,
                    ),
                  ),
                  const SizedBox(width: 12),

                  Expanded(
                    child: CustomTextFormFiewdComponent(
                      controller: _cepController,
                      textImputType: TextInputType.number,
                      label: 'Cep',
                      erro: state.cepErro,
                      onChanged: notifier.onCEPChanged,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                controller: _bairroController,
                textImputType: TextInputType.name,
                label: 'Bairro',
                erro: state.bairroErro,
                onChanged: notifier.onBairroChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                controller: _cidadeController,
                textImputType: TextInputType.name,
                label: 'Cidade',
                erro: state.cidadeErro,
                onChanged: notifier.onCidadeChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                controller: _estadoController,
                textImputType: TextInputType.name,
                label: 'Estado',
                erro: state.estadoErro,
                onChanged: notifier.onEstadoChanged,
              ),
              const SizedBox(height: 16),

              CustomButtonComponent(
                text: 'Salvar',
                onClick: () {
                  notifier.editarEndereco();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
