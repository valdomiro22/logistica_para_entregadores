import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/common/components/carregando_component.dart';
import 'package:logistica_entregador/common/components/custom_buttom_component.dart';
import 'package:logistica_entregador/common/components/custom_textfiewd_component.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/adicionar/adicionar_cliente_notifier.dart';

class AdicionarClienteScreen extends ConsumerStatefulWidget {
  const AdicionarClienteScreen({super.key});

  @override
  ConsumerState<AdicionarClienteScreen> createState() => _AdicionarClienteScreenState();
}

class _AdicionarClienteScreenState extends ConsumerState<AdicionarClienteScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarClienteProvider);
    final notifier = ref.watch(adicionarClienteProvider.notifier);

    ref.listen(adicionarClienteProvider, (previous, next) {
      if (next.isSuccess) {
        ref.read(adicionarClienteProvider.notifier).limpar();

        if (context.canPop()) {
          context.pop();
        }
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
                textImputType: TextInputType.text,
                erro: state.nomeErro,
                label: 'Nome',
                onFocus: true,
                onChanged: notifier.onNomeChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                textImputType: TextInputType.text,
                erro: state.nomeErro,
                label: 'Telefone',
                onFocus: true,
                onChanged: notifier.onTelefoneChanged,
              ),
              const SizedBox(height: 12),

              CustomTextFormFiewdComponent(
                textImputType: TextInputType.text,
                erro: state.nomeErro,
                label: 'E-mail',
                onFocus: true,
                onChanged: notifier.onEmailChanged,
              ),
              const SizedBox(height: 16),

              CustomButtonComponent(text: 'Salvar', onClick: () => notifier.adicionarCliente()),

              if (state.isLoading) CarregandoComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
