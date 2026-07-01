import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/common/components/empty_list_component.dart';
import 'package:logistica_entregador/features/cliente/presentation/components/item_lista_cliente.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/listar/lista_clientes_notifier.dart';
import 'package:logistica_entregador/route/app_routes_names.dart';

class ListaClientesScreen extends ConsumerWidget {
  const ListaClientesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listaClientesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Clientes')),
      body: state.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (listaClientes) {
          if (listaClientes.isEmpty) {
            return const EmptyListComponent(mensagem: 'para adicionar um novo cliente');
          }

          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: listaClientes.length,
            itemBuilder: (context, index) {
              final cliente = listaClientes[index];

              return ItemListaCliente(
                nome: cliente.nome,
                telefone: cliente.telefone,
                email: cliente.email,
                onEdit: () {
                  context.push('${AppRoutesNames.editarCliente}/${cliente.id}');
                },
                onDelete: () {
                  ref.read(listaClientesProvider.notifier).deletarCliente(cliente);
                },
                onCardClick: () {
                  context.push('${AppRoutesNames.listaEntregasPorCliente}/${cliente.id}');
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => context.push(AppRoutesNames.adicionarCliente),
        child: Icon(Icons.add),
      ),
    );
  }
}
