import 'package:logistica_entregador/features/entrega/data/dao/entrega_dao.dart';
import 'package:logistica_entregador/features/entrega/data/localdatasource/entrega_local_datacource.dart';
import 'package:logistica_entregador/features/entrega/data/localdatasource/entrega_local_datacource_impl.dart';
import 'package:logistica_entregador/features/entrega/data/repositories/entega_repository_impl.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/database/app_database.dart';

part 'entrega_data_providers.g.dart';

@riverpod
EntregaDao entregaDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return EntregaDao(db);
}

@riverpod
EntregaLocalDatacource etregaLocalDatacource(Ref ref) {
  final dao = ref.watch(entregaDaoProvider);
  return EntregaLocalDatacourceImpl(dao);
}

@riverpod
EntregaRepository entregaRepository(Ref ref) {
  final dataSource = ref.watch(etregaLocalDatacourceProvider);
  return EntegaRepositoryImpl(dataSource);
}
