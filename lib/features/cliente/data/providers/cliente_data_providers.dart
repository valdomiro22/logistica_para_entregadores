import 'package:logistica_entregador/core/database/app_database.dart';
import 'package:logistica_entregador/features/cliente/data/dao/cliente_dao.dart';
import 'package:logistica_entregador/features/cliente/data/localdatasource/cliente_local_data_source.dart';
import 'package:logistica_entregador/features/cliente/data/localdatasource/cliente_local_data_source_impl.dart';
import 'package:logistica_entregador/features/cliente/data/repositories/cliente_repository_impl.dart';
import 'package:logistica_entregador/features/cliente/domain/repositories/cliente_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cliente_data_providers.g.dart';

@riverpod
ClienteDao clienteDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return ClienteDao(db);
}

@riverpod
ClienteLocalDataSource clienteLocalDataSource(Ref ref) {
  final dao = ref.watch(clienteDaoProvider);
  return ClienteLocalDataSourceImpl(dao);
}

@riverpod
ClienteRepository clienteRepository(Ref ref) {
  final dataSource = ref.watch(clienteLocalDataSourceProvider);
  return ClienteRepositoryImpl(dataSource);
}