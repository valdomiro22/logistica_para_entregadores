import 'package:logistica_entregador/features/cliente/data/providers/cliente_data_providers.dart';
import 'package:logistica_entregador/features/cliente/domain/usecases/delete_one_cliente_use_case.dart';
import 'package:logistica_entregador/features/cliente/domain/usecases/get_all_clientes_use_case.dart';
import 'package:logistica_entregador/features/cliente/domain/usecases/get_one_cliente_use_case.dart';
import 'package:logistica_entregador/features/cliente/domain/usecases/insert_cliente_use_case.dart';
import 'package:logistica_entregador/features/cliente/domain/usecases/update_cliente_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cliente_domain_providers.g.dart';

@riverpod
InsertClienteUseCase insertClienteUseCase(Ref ref) {
  final clienteRepository = ref.read(clienteRepositoryProvider);
  return InsertClienteUseCase(clienteRepository);
}

@riverpod
UpdateClienteUseCase updateClienteUseCase(Ref ref) {
  final clienteRepository = ref.read(clienteRepositoryProvider);
  return UpdateClienteUseCase(clienteRepository);
}

@riverpod
GetOneClienteUseCase getOneClienteUseCase(Ref ref) {
  final clienteRepository = ref.read(clienteRepositoryProvider);
  return GetOneClienteUseCase(clienteRepository);
}

@riverpod
DeleteOneClienteUseCase deleteOneClienteUseCase(Ref ref) {
  final clienteRepository = ref.read(clienteRepositoryProvider);
  return DeleteOneClienteUseCase(clienteRepository);
}

@riverpod
GetAllClientesUseCase getAllClientesUseCase(Ref ref) {
  final clienteRepository = ref.read(clienteRepositoryProvider);
  return GetAllClientesUseCase(clienteRepository);
}
