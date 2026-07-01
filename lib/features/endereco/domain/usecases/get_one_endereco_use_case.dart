import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';
import 'package:logistica_entregador/features/endereco/domain/repositories/endereco_repository.dart';

class GetOneEnderecoUseCase {
  final EnderecoRepository _repository;

  GetOneEnderecoUseCase(this._repository);

  Future<Either<Failure, EnderecoEntity>> call(String enderecoId) async {
    final result = await _repository.getOneById(enderecoId);

    return result.fold(
        (failure) => Left(failure),
        (endereco) {
          if (endereco == null) return Left(ErroInesperadoFailure('Endereço não encontrado'));
          return Right(endereco);
        }
    );
  }
}