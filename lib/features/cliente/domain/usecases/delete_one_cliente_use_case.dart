import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/repositories/cliente_repository.dart';

class DeleteOneClienteUseCase {
  final ClienteRepository _repository;

  DeleteOneClienteUseCase(this._repository);

  Future<Either<Failure, Unit>> call(ClienteEntity cliente) async {
    if (cliente.id.isEmpty) {
      return Left(ErroInesperadoFailure('ID do cliente não pode estar vasio'));
    }

    return _repository.delete(cliente);
  }
}
