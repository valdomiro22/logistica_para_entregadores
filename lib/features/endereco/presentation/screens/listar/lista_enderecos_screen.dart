import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/common/components/empty_list_component.dart';
import 'package:logistica_entregador/features/endereco/presentation/components/item_endereco_lista.dart';
import 'package:logistica_entregador/features/endereco/presentation/screens/listar/lista_enderecos_do_cliente_notifier.dart';
import 'package:logistica_entregador/route/app_routes_names.dart';

class ListaEnderecosScreen extends ConsumerWidget {
  final String clienteId;

  const ListaEnderecosScreen({super.key, required this.clienteId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listaEnderecosDoClienteProvider(clienteId));

    return Scaffold(
      appBar: AppBar(title: Text('Lista de endereços')),
      body: state.when(
        loading: () {
          return const Center(child: CircularProgressIndicator(color: Colors.purple,));
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (listaEnderecos) {
          if (listaEnderecos.isEmpty) {
            return const EmptyListComponent(mensagem: 'um novo endereço');
          }

          return ListView.builder(
            itemCount: listaEnderecos.length,
            itemBuilder: (context, index) {
              final endereco = listaEnderecos[index];

              return ItemEnderecoLista(
                clienteNome: endereco.nome,
                rua: endereco.rua,
                numero: endereco.numero,
                bairro: endereco.bairro,
                cidade: endereco.cidade,
                onEdit: () => context.push('${AppRoutesNames.editarEndereco}/${endereco.id}/${endereco.clienteId}'),
                onDelete: () {
                  ref.read(listaEnderecosDoClienteProvider(clienteId).notifier).deletarEndereco(endereco);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => context.push('${AppRoutesNames.adicionarEndereco}/$clienteId'),
        child: Icon(Icons.add),
      ),
    );
  }
}
