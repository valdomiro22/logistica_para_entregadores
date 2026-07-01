import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/providers/get_all_clientes.dart';
import 'package:logistica_entregador/features/entrega/presentation/screens/editar/editar_entrega_notifier.dart';

import '../../../../../common/components/carregando_component.dart';
import '../../../../../common/components/custom_buttom_component.dart';
import '../../../../../common/components/date_picker_field_component.dart';

class EditarEntregaScreen extends ConsumerStatefulWidget {
  final String entregaId;

  const EditarEntregaScreen({super.key, required this.entregaId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditarEntregaScreenState();
}

class _EditarEntregaScreenState extends ConsumerState<EditarEntregaScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(editarEntregaProvider.notifier).buscarEntrega(widget.entregaId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final entregaState = ref.watch(editarEntregaProvider);
    final entregaNotifier = ref.read(editarEntregaProvider.notifier);
    final clienteState = ref.watch(getAllClientesProvider);

    ref.listen(editarEntregaProvider, (previous, next) {
      if (previous?.id != next.id && next.id.isNotEmpty) {}

      if (next.isSuccess && previous?.isSuccess != true) {
        ref.read(editarEntregaProvider.notifier).limpar();
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Editar Entrega')),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          children: [
            DatePickerFieldComponent(
              dataSelecionada: entregaState.dataEntrega,
              erroData: entregaState.dataEntregaErro,
              onDataChanged: entregaNotifier.onDataEntregaChanged,
            ),
            const SizedBox(height: 16),

            clienteState.when(
              loading: () => const CarregandoComponent(),
              error: (error, _) => Text(error.toString().replaceFirst('Exception: ', '')),
              data: (clientes) {
                return DropdownButtonFormField<String>(
                  initialValue: entregaState.clienteId.isEmpty ? null : entregaState.clienteId,
                  decoration: InputDecoration(
                    labelText: 'Cliente',
                    errorText: entregaState.clienteIdErro,
                    border: const OutlineInputBorder(),
                  ),
                  items: clientes.map((cliente) {
                    return DropdownMenuItem<String>(value: cliente.id, child: Text(cliente.nome));
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      entregaNotifier.onClienteIdChanged(value);
                    }
                  },
                );
              },
            ),
            const SizedBox(height: 16),

            CustomButtonComponent(text: 'Salvar', onClick: () => entregaNotifier.editarEntrega()),

            if (entregaState.isLoading) CarregandoComponent(),
          ],
        ),
      ),
    );
  }
}
