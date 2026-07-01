import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';
import 'package:logistica_entregador/features/endereco/domain/repositories/endereco_repository.dart';

class GetEnderecosOfClienteUseCase {
  final EnderecoRepository _repository;

  GetEnderecosOfClienteUseCase(this._repository);

  Future<Either<Failure, List<EnderecoEntity>>> call(String clienteId) async {
    return _repository.getEnderecosOfCliente(clienteId);
  }
}