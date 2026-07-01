import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';
import 'package:logistica_entregador/features/endereco/domain/repositories/endereco_repository.dart';

class DeleteOneEnderecoUseCase {
  final EnderecoRepository _repository;

  DeleteOneEnderecoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(EnderecoEntity endereco) async {
    if (endereco.id.isEmpty) return Left(ErroInesperadoFailure('ID não pode estar vazio'));
    return _repository.delete(endereco);
  }
}