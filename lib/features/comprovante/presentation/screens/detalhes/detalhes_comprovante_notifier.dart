import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';
import 'package:logistica_entregador/features/comprovante/domain/providers/comprovante_domain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detalhes_comprovante_notifier.g.dart';

@riverpod
class DetalhesComprovanteNotifier extends _$DetalhesComprovanteNotifier {
  @override
  Future<ComprovanteEntity> build(String comprovanteId) => _buscarComprovante(comprovanteId);

  Future<ComprovanteEntity> _buscarComprovante(String comprovanteId) async {
    final useCase = ref.read(getOneComprovanteUseCaseProvider);
    final result = await useCase(comprovanteId);

    return result.fold(
        (failure) => throw Exception(failure),
        (lista) {
          return lista;
        },
    );
  }

  Future<void> recarregar(String comprovanteId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _buscarComprovante(comprovanteId));
  }
}
