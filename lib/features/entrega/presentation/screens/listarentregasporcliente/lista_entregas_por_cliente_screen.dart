import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/common/components/empty_list_component.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/providers/get_one_cliente_por_id.dart';
import 'package:logistica_entregador/features/entrega/presentation/components/item_lista_entrega.dart';

import '../../../../../route/app_routes_names.dart';
import 'lista_entregas_por_cliente_notifier.dart';

class ListaEntregasPorClienteScreen extends ConsumerWidget {
  final String clienteId;

  const ListaEntregasPorClienteScreen({super.key, required this.clienteId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entregaState = ref.watch(listaEntregasPorClienteProvider(clienteId));
    final clienteState = ref.watch(getOneClientePorIdProvider(clienteId));
    final entregaNotifier = ref.watch(listaEntregasPorClienteProvider(clienteId).notifier);

    return Scaffold(
      appBar: AppBar(
        title: clienteState.when(
          loading: () => const Text('Entregas'),
          error: (_, _) => const Text('Entregas'),
          data: (cliente) => Text('Entregas de ${cliente.nome}'),
        ),
      ),
      body: entregaState.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (listaEntregas) {
          if (listaEntregas.isEmpty) {
            return EmptyListComponent(mensagem: 'adicionar uma entrega para este cliente');
          }

          final nomeCliente = clienteState.maybeWhen(
            data: (cliente) => cliente.nome,
            orElse: () => '',
          );

          return ListView.builder(
            itemCount: listaEntregas.length,
            itemBuilder: (context, index) {
              final entrega = listaEntregas[index];

              return ItemListaEntrega(
                dataEntrega: entrega.dataEntrega,
                nomeCliente: nomeCliente,
                statusEntrega: entrega.status,
                onDelete: () => entregaNotifier.deletarEntrega(entrega),
                onEdit: () => context.push('${AppRoutesNames.editarEntrega}/${entrega.id}'),
                onItemClick: () {
                  context.push('${AppRoutesNames.listaComprovantes}/${entrega.id}/$clienteId');
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          context.push('${AppRoutesNames.adicionarEntrega}/$clienteId');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
