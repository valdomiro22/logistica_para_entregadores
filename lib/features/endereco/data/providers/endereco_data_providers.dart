import 'package:logistica_entregador/core/database/app_database.dart';
import 'package:logistica_entregador/features/endereco/data/dao/endereco_dao.dart';
import 'package:logistica_entregador/features/endereco/data/localdatasource/endereco_local_data_source.dart';
import 'package:logistica_entregador/features/endereco/data/localdatasource/endereco_local_data_source_impl.dart';
import 'package:logistica_entregador/features/endereco/data/repositories/endereco_repository_impl.dart';
import 'package:logistica_entregador/features/endereco/domain/repositories/endereco_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'endereco_data_providers.g.dart';

@riverpod
EnderecoDao enderecoDao(Ref ref) {
  final db = ref.read(appDatabaseProvider);
  return EnderecoDao(db);
}

@riverpod
EnderecoLocalDataSource enderecoLocalDataSource(Ref ref) {
  final dataSource = ref.read(enderecoDaoProvider);
  return EnderecoLocalDataSourceImpl(dataSource);
}

@riverpod
EnderecoRepository enderecoRepository(Ref ref) {
  final enderecoRepository = ref.read(enderecoLocalDataSourceProvider);
  return EnderecoRepositoryImpl(enderecoRepository);
}
