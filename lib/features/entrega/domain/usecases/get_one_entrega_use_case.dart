import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';

import '../../../../core/error/failure.dart';

class GetOneEntregaUseCase {
  final EntregaRepository _repository;

  GetOneEntregaUseCase(this._repository);

  Future<Either<Failure, EntregaEntity>> call(String entregaId) async {
    if (entregaId.isEmpty) {
      return Left(ErroInesperadoFailure('entregaId não pode estar vazio'));
    }

    final result = await _repository.getOneById(entregaId);
    return result.fold(
        (failure) => Left(failure),
        (entrega) {
          if (entrega == null) return Left(ErroInesperadoFailure('Entrega não encontrada'));
          return Right(entrega);
        }
    );

  }
}