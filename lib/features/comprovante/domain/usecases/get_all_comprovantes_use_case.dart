import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';
import 'package:logistica_entregador/features/comprovante/domain/repositories/comprovante_repository.dart';

import '../../../../core/error/failure.dart';

class GetAllComprovantesUseCase {
  final ComprovanteRepository _repository;

  GetAllComprovantesUseCase(this._repository);

  Future<Either<Failure, List<ComprovanteEntity>>> call() async {
    return _repository.getAll();
  }
}
