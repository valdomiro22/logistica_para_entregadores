import 'package:logistica_entregador/features/comprovante/data/dao/comprovante_dao.dart';
import 'package:logistica_entregador/features/comprovante/data/localdatasource/comprovante_local_data_source.dart';
import 'package:logistica_entregador/features/comprovante/data/localdatasource/comprovante_local_data_source_impl.dart';
import 'package:logistica_entregador/features/comprovante/data/repositories/comprovante_repository_impl.dart';
import 'package:logistica_entregador/features/comprovante/domain/repositories/comprovante_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/database/app_database.dart';

part 'comprovante_data_providers.g.dart';

@riverpod
ComprovanteDao comprovanteDao(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return ComprovanteDao(db);
}

@riverpod
ComprovanteLocalDataSource comprovanteLocalDataSource(Ref ref) {
  final dao = ref.watch(comprovanteDaoProvider);
  return ComprovanteLocalDataSourceImpl(dao);
}

@riverpod
ComprovanteRepository comprovanteRepository(Ref ref) {
  final dataSource = ref.watch(comprovanteLocalDataSourceProvider);
  return ComprovanteRepositoryImpl(dataSource);
}
