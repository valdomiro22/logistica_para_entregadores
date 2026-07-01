import 'package:logistica_entregador/features/entrega/data/providers/entrega_data_providers.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/delete_one_entrega_use_case.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/get_all_entregas_por_cliente_use_case.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/get_all_entregas_por_status_use_case.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/get_all_entregas_use_case.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/get_one_entrega_use_case.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/insert_entrega_use_case.dart';
import 'package:logistica_entregador/features/entrega/domain/usecases/update_entrega_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'entrega_domain_providers.g.dart';

@riverpod
InsertEntregaUseCase insertEntregaUseCase(Ref ref) {
  final entregaRepository = ref.read(entregaRepositoryProvider);
  return InsertEntregaUseCase(entregaRepository);
}

@riverpod
UpdateEntregaUseCase updateEntregaUseCase(Ref ref) {
  final entregaRepository = ref.read(entregaRepositoryProvider);
  return UpdateEntregaUseCase(entregaRepository);
}

@riverpod
DeleteOneEntregaUseCase deleteOneEntregaUseCase(Ref ref) {
  final entregaRepository = ref.read(entregaRepositoryProvider);
  return DeleteOneEntregaUseCase(entregaRepository);
}

@riverpod
GetOneEntregaUseCase getOneEntregaUseCase(Ref ref) {
  final entregaRepository = ref.read(entregaRepositoryProvider);
  return GetOneEntregaUseCase(entregaRepository);
}

@riverpod
GetAllEntregasUseCase getAllEntregasUseCase(Ref ref) {
  final entregaRepository = ref.read(entregaRepositoryProvider);
  return GetAllEntregasUseCase(entregaRepository);
}

@riverpod
GetAllEntregasPorClienteUseCase getAllEntregasPorClienteUseCase(Ref ref) {
  final entregaRepository = ref.read(entregaRepositoryProvider);
  return GetAllEntregasPorClienteUseCase(entregaRepository);
}

@riverpod
GetAllEntregasPorStatusUseCase getAllEntregasPorStatusUseCase(Ref ref) {
  final entregaRepository = ref.read(entregaRepositoryProvider);
  return GetAllEntregasPorStatusUseCase(entregaRepository);
}
