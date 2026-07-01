import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/common/components/carregando_component.dart';
import 'package:logistica_entregador/common/components/custom_buttom_component.dart';
import 'package:logistica_entregador/common/components/date_picker_field_component.dart';
import 'package:logistica_entregador/features/entrega/presentation/screens/adicionar/adicionar_entrega_notifier.dart';

class AdicionarEntregaScreen extends ConsumerStatefulWidget {
  final String clienteId;

  const AdicionarEntregaScreen({super.key, required this.clienteId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarEntregaScreenState();
}

class _AdicionarEntregaScreenState extends ConsumerState<AdicionarEntregaScreen> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(adicionarEntregaProvider.notifier).onClienteIdChanged(widget.clienteId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarEntregaProvider);
    final notifier = ref.watch(adicionarEntregaProvider.notifier);

    ref.listen(adicionarEntregaProvider, (previous, next) {
      if (next.isSuccess) {
        ref.read(adicionarEntregaProvider.notifier).limpar();

        if (context.canPop()) {
          context.pop();
        }
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Entrega')),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          children: [
            DatePickerFieldComponent(
              dataSelecionada: state.dataEntrega,
              erroData: state.dataEntregaErro,
              onDataChanged: notifier.onDataEntregaChanged,
            ),
            const SizedBox(height: 16),

            CustomButtonComponent(text: 'Salvar', onClick: () => notifier.adicionarEntrega()),

            if (state.isLoading) CarregandoComponent(),
          ],
        ),
      ),
    );
  }
}
