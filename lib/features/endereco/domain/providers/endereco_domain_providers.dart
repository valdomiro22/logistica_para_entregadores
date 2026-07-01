import 'package:logistica_entregador/features/endereco/data/providers/endereco_data_providers.dart';
import 'package:logistica_entregador/features/endereco/domain/usecases/delete_one_endereco_use_case.dart';
import 'package:logistica_entregador/features/endereco/domain/usecases/get_all_enderecos_use_case.dart';
import 'package:logistica_entregador/features/endereco/domain/usecases/get_one_endereco_use_case.dart';
import 'package:logistica_entregador/features/endereco/domain/usecases/insert_endereco_use_case.dart';
import 'package:logistica_entregador/features/endereco/domain/usecases/update_endereco_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'endereco_domain_providers.g.dart';

@riverpod
InsertEnderecoUseCase insertEnderecoUseCase(Ref ref) {
  final enderecoRepository = ref.read(enderecoRepositoryProvider);
  return InsertEnderecoUseCase(enderecoRepository);
}

@riverpod
UpdateEnderecoUseCase updateEnderecoUseCase(Ref ref) {
  final enderecoRepository = ref.read(enderecoRepositoryProvider);
  return UpdateEnderecoUseCase(enderecoRepository);
}

@riverpod
GetOneEnderecoUseCase getOneEnderecoUseCase(Ref ref) {
  final enderecoRepository = ref.read(enderecoRepositoryProvider);
  return GetOneEnderecoUseCase(enderecoRepository);
}

@riverpod
DeleteOneEnderecoUseCase deleteOneEnderecoUseCase(Ref ref) {
  final enderecoRepository = ref.read(enderecoRepositoryProvider);
  return DeleteOneEnderecoUseCase(enderecoRepository);
}

@riverpod
GetAllEnderecosUseCase getAllEnderecosUseCase(Ref ref) {
  final enderecoRepository = ref.read(enderecoRepositoryProvider);
  return GetAllEnderecosUseCase(enderecoRepository);
}
