import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';
import 'package:logistica_entregador/features/comprovante/domain/providers/comprovante_domain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lista_comprovantes_notifier.g.dart';

@riverpod
class ListaComprovantesNotifier extends _$ListaComprovantesNotifier {
  @override
  Future<List<ComprovanteEntity>> build() => _buscarComprovantes();

  Future<List<ComprovanteEntity>> _buscarComprovantes() async {
    final useCase = ref.read(getAllComprovantesUseCaseProvider);
    final result = await useCase();

    return result.fold(
        (failure) => throw Exception(failure),
        (lista) {
          return lista;
        },
    );
  }

  Future<void> deletarComprovante(ComprovanteEntity comprovante) async {
    final listaAnterior = state.value ?? [];

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final useCase = ref.read(deleteOneComprovanteUseCaseProvider);
      final result = await useCase(comprovante);

      return result.fold((failure) => throw Exception(failure), (_) {
        return listaAnterior.where((item) => item.id != comprovante.id).toList();
      });
    });
  }

  Future<void> recarregar() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _buscarComprovantes());
  }
}
