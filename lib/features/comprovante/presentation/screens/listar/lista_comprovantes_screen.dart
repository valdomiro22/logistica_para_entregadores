import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/features/comprovante/presentation/components/item_lista_comprovante.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/listar/lista_comprovantes_notifier.dart';

import '../../../../../common/components/empty_list_component.dart';
import '../../../../../route/app_routes_names.dart';

class ListaComprovantesScreen extends ConsumerStatefulWidget {
  final String entregaId;
  final String clienteId;
  
  const ListaComprovantesScreen({super.key, required this.entregaId, required this.clienteId,});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ListaComprovantesScreenState();
}

class _ListaComprovantesScreenState extends ConsumerState<ListaComprovantesScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(listaComprovantesProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Lista de Comprovantes')),
      body: state.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString().replaceFirst('Exception: ', '')));
        },
        data: (listaComprovantes) {
          if (listaComprovantes.isEmpty) {
            return const EmptyListComponent(mensagem: 'para adicionar um novo comprovante');
          }

          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: listaComprovantes.length,
            itemBuilder: (context, index) {
              final comprovante = listaComprovantes[index];

              return ItemListaComprovante(
                onEdit: () {
                  context.push('${AppRoutesNames.editarComprovante}/${comprovante.id}');
                },
                onDelete: () {
                  ref.read(listaComprovantesProvider.notifier).deletarComprovante(comprovante);
                },
                onItemClick: () {
                  context.push('${AppRoutesNames.detalhesComprovante}/${comprovante.id}');
                },
                clienteNome: 'Clara',
                data: DateTime.now(),
                status: 'EMTREGUE',
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          context.push('${AppRoutesNames.adicionarComprovante}/${widget.entregaId}/${widget.clienteId}');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
