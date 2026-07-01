import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/status_entrega.dart';
import 'package:logistica_entregador/features/entrega/domain/providers/entrega_domain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_entregas_concluidas_notifier.g.dart';

@riverpod
class ListaEntregasConcluidasNotifier extends _$ListaEntregasConcluidasNotifier {
  @override
  Future<List<EntregaEntity>> build(StatusEntrega status) => _buscarEntregas(status);

  Future<List<EntregaEntity>> _buscarEntregas(StatusEntrega status) async {
    final useCase = ref.read(getAllEntregasPorStatusUseCaseProvider);
    final result = await useCase(status);

    return result.fold(
          (failure) => throw Exception(failure),
          (listaEntregas) {
        return listaEntregas;
      },
    );
  }

  Future<void> recarregar(StatusEntrega status) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _buscarEntregas(status));
  }
}
