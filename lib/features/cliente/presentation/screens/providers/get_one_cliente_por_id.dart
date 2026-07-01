import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/providers/cliente_domain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_one_cliente_por_id.g.dart';

@riverpod
Future<ClienteEntity> getOneClientePorId(Ref ref, String clienteId) async {
  final useCase = ref.read(getOneClienteUseCaseProvider);
  final result = await useCase(clienteId);

  return result.fold(
        (failure) => throw Exception(failure),
        (cliente) => cliente,
  );
}