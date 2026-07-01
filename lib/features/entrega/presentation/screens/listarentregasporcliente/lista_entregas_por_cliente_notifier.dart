import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/providers/cliente_domain_providers.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/providers/entrega_domain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_entregas_por_cliente_notifier.g.dart';

@riverpod
class ListaEntregasPorClienteNotifier extends _$ListaEntregasPorClienteNotifier {
  @override
  Future<List<EntregaEntity>> build(String clienteId) => _buscarEntrega(clienteId);

  Future<List<EntregaEntity>> _buscarEntrega(String clienteId) async {
    final useCase = ref.read(getAllEntregasPorClienteUseCaseProvider);
    final result = await useCase(clienteId);

    return result.fold(
        (failure) => throw Exception(failure),
        (listaEntregas) {
          return listaEntregas;
        },
    );
  }

  Future<ClienteEntity> buscarCliente(String clienteId) async {
    final useCase = ref.read(getOneClienteUseCaseProvider);
    final result = await useCase(clienteId);

    return result.fold(
        (failure) => throw Exception(failure),
        (cliente) {
          return cliente;
        },
    );
  }

  Future<void> deletarEntrega(EntregaEntity entrega) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneEntregaUseCaseProvider);
      final result = await useCase(entrega);

      return result.fold(
          (failure) => throw Exception(failure),
          (_) {
            return listaAnterior.where((item) => item.id != entrega.id).toList();
          }
      );
    });
  }

  Future<void> recarregar(String clienteId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _buscarEntrega(clienteId));
  }
}
