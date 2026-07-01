import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/providers/cliente_domain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_clientes_notifier.g.dart';

@riverpod
class ListaClientesNotifier extends _$ListaClientesNotifier {
  @override
  Future<List<ClienteEntity>> build() => _buscarClientes();

  Future<List<ClienteEntity>> _buscarClientes() async {
    final useCase = ref.read(getAllClientesUseCaseProvider);
    final result = await useCase();

    return result.fold((failure) => throw Exception(failure), (listaClientes) => listaClientes);
  }

  Future<void> deletarCliente(ClienteEntity cliente) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneClienteUseCaseProvider);
      final result = await useCase(cliente);

      return result.fold((failure) => throw Exception(failure), (_) {
        return listaAnterior.where((item) => item.id != cliente.id).toList();
      });
    });
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_buscarClientes);
  }
}
