import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';
import 'package:logistica_entregador/features/comprovante/domain/repositories/comprovante_repository.dart';

import '../../../../core/error/failure.dart';

class DeleteOneComprovanteUseCase {
  final ComprovanteRepository _repository;

  DeleteOneComprovanteUseCase(this._repository);

  Future<Either<Failure, Unit>> call(ComprovanteEntity comprovante) async {
    if (comprovante.id.isEmpty) {
      return Left(ErroInesperadoFailure('ID do comprovante não pode estar vazio'));
    }

    return _repository.delete(comprovante);
  }
}
