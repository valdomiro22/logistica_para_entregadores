import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/providers/cliente_domain_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_all_clientes.g.dart';

@riverpod
Future<List<ClienteEntity>> getAllClientes(Ref ref) async {
  final useCase = ref.read(getAllClientesUseCaseProvider);
  final result = await useCase();

  return result.fold(
        (failure) => throw Exception(failure),
        (clientes) => clientes,
  );
}