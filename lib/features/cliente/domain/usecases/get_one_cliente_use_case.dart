import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/repositories/cliente_repository.dart';

class GetOneClienteUseCase {
  final ClienteRepository _repository;

  GetOneClienteUseCase(this._repository);

  Future<Either<Failure, ClienteEntity>> call(String clienteId) async {
    if (clienteId.isEmpty) return Left(ErroInesperadoFailure('ID do cliente não pode estar vasio'));

    final result = await _repository.getOneById(clienteId);
    return result.fold(
      (failure) => Left(failure),
      (cliente) {
        if (cliente == null) {
          return Left(ErroInesperadoFailure("Cliente não encontrado"));
        }

        return Right(cliente);
      }
    );
  }
}
