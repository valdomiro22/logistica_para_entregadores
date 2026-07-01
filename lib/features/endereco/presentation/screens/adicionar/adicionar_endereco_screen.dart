import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/common/components/custom_buttom_component.dart';
import 'package:logistica_entregador/common/components/custom_textfiewd_component.dart';
import 'package:logistica_entregador/features/endereco/presentation/screens/adicionar/adicionar_endereco_notifier.dart';

class AdicionarEnderecoScreen extends ConsumerStatefulWidget {
  final String clienteId;
  
  const AdicionarEnderecoScreen({super.key, required this.clienteId,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarEnderecoScreenState();
}

class _AdicionarEnderecoScreenState extends ConsumerState<AdicionarEnderecoScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarEnderecoProvider);
    final notifier = ref.read(adicionarEnderecoProvider.notifier);

    ref.listen(adicionarEnderecoProvider, (previous, next) {
      if (next.isSuccess) {
        ref.read(adicionarEnderecoProvider.notifier).limpar();

        if (context.canPop()) {
          context.pop();
        }
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Endereço')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(height: 6),

              CustomTextFormFiewdComponent(
                textImputType: TextInputType.name,
                label: 'Nome',
                erro: state.numeroErro,
                onChanged: notifier.onNomeChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
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
                      textImputType: TextInputType.number,
                      label: 'Número',
                      erro: state.numeroErro,
                      onChanged: notifier.onNumeroChanged,
                    ),
                  ),
                  const SizedBox(width: 12),

                  Expanded(
                    child: CustomTextFormFiewdComponent(
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
                textImputType: TextInputType.name,
                label: 'Bairro',
                erro: state.bairroErro,
                onChanged: notifier.onBairroChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                textImputType: TextInputType.name,
                label: 'Cidade',
                erro: state.cidadeErro,
                onChanged: notifier.onCidadeChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                textImputType: TextInputType.name,
                label: 'Estado',
                erro: state.estadoErro,
                onChanged: notifier.onEstadoChanged,
              ),
              const SizedBox(height: 16),
              
              CustomButtonComponent(text: 'Salvar', onClick: () {
                debugPrint('clienteId: ${widget.clienteId}');
                notifier.onClienteIdChanged(widget.clienteId);
                notifier.adicionarEndereco();
              })
            ],
          ),
        ),
      ),
    );
  }
}
