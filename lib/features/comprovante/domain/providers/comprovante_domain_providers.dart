import 'package:logistica_entregador/features/comprovante/data/providers/comprovante_data_providers.dart';
import 'package:logistica_entregador/features/comprovante/domain/usecases/delete_one_comprovante_use_case.dart';
import 'package:logistica_entregador/features/comprovante/domain/usecases/get_all_comprovantes_use_case.dart';
import 'package:logistica_entregador/features/comprovante/domain/usecases/get_one_comprovante_use_case.dart';
import 'package:logistica_entregador/features/comprovante/domain/usecases/insert_comprovante_use_case.dart';
import 'package:logistica_entregador/features/comprovante/domain/usecases/update_comprovante_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comprovante_domain_providers.g.dart';

@riverpod
InsertComprovanteUseCase insertComprovanteUseCase(Ref ref) {
  final comprovanteRepository = ref.read(comprovanteRepositoryProvider);
  return InsertComprovanteUseCase(comprovanteRepository);
}

@riverpod
UpdateComprovanteUseCase updateComprovanteUseCase(Ref ref) {
  final comprovanteRepository = ref.read(comprovanteRepositoryProvider);
  return UpdateComprovanteUseCase(comprovanteRepository);
}

@riverpod
DeleteOneComprovanteUseCase deleteOneComprovanteUseCase(Ref ref) {
  final comprovanteRepository = ref.read(comprovanteRepositoryProvider);
  return DeleteOneComprovanteUseCase(comprovanteRepository);
}

@riverpod
GetOneComprovanteUseCase getOneComprovanteUseCase(Ref ref) {
  final comprovanteRepository = ref.read(comprovanteRepositoryProvider);
  return GetOneComprovanteUseCase(comprovanteRepository);
}

@riverpod
GetAllComprovantesUseCase getAllComprovantesUseCase(Ref ref) {
  final comprovanteRepository = ref.read(comprovanteRepositoryProvider);
  return GetAllComprovantesUseCase(comprovanteRepository);
}
