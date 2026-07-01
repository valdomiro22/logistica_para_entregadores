import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/status_entrega.dart';

import '../../../../../common/components/empty_list_component.dart';
import '../../../../../route/app_routes_names.dart';
import '../../../../cliente/presentation/screens/providers/get_all_clientes.dart';
import '../../components/item_lista_entrega.dart';
import 'lista_entregas_concluidas_notifier.dart';

class ListaEntregasConcluidasScreen extends ConsumerStatefulWidget {
  const ListaEntregasConcluidasScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListaEntregasConcluidasScreenState();
}

class _ListaEntregasConcluidasScreenState extends ConsumerState<ListaEntregasConcluidasScreen> {
  StatusEntrega statusSelecionado = StatusEntrega.pendente;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entregas')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: StatusEntrega.values.map((status) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          statusSelecionado = status;
                        });
                      },
                      child: Text(status.text),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          Expanded(child: _conteudo(statusSelecionado, ref)),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          // context.push('${AppRoutesNames.adicionarEntrega}/$clienteId');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget _conteudo(StatusEntrega status, WidgetRef ref) {
  final entregaState = ref.watch(listaEntregasConcluidasProvider(status));
  final clientesState = ref.watch(getAllClientesProvider);

  return entregaState.when(
    loading: () {
      return const Center(child: CircularProgressIndicator());
    },
    error: (error, stackTrace) {
      return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
    },
    data: (listaEntregas) {
      if (listaEntregas.isEmpty) {
        return const EmptyListComponent(mensagem: 'Nenhuma entrega encontrada');
      }

      return clientesState.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (clientes) {
          return ListView.builder(
            itemCount: listaEntregas.length,
            itemBuilder: (context, index) {
              final entrega = listaEntregas[index];

              final cliente = clientes
                  .where((cliente) => cliente.id == entrega.clienteId)
                  .firstOrNull;

              return ItemListaEntrega(
                dataEntrega: entrega.dataEntrega,
                nomeCliente: cliente?.nome ?? 'Cliente indefinido',
                statusEntrega: entrega.status,
                onDelete: () {},
                onEdit: () {
                  context.push('${AppRoutesNames.editarEntrega}/${entrega.id}');
                },
                onItemClick: () {
                  context.push('${AppRoutesNames.listaComprovantes}/${entrega.id}');
                },
              );
            },
          );
        },
      );
    },
  );
}
