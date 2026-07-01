import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';
import 'package:logistica_entregador/features/comprovante/domain/repositories/comprovante_repository.dart';

import '../../../../core/error/failure.dart';

class GetOneComprovanteUseCase {
  final ComprovanteRepository _repository;

  GetOneComprovanteUseCase(this._repository);

  Future<Either<Failure, ComprovanteEntity>> call(String comprovanteId) async {
    if (comprovanteId.isEmpty) {
      return Left(ErroInesperadoFailure('ID do comprovante não pode estar vazio'));
    }

    final result = await _repository.getOneById(comprovanteId);

    return result.fold(
        (failure) => Left(failure),
        (comprovante)  {
          if (comprovante == null) {
            return Left(ErroInesperadoFailure('Comprovante não encontrado'));
          }

          return Right(comprovante);
        }
    );
  }
}
