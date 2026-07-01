import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';
import 'package:logistica_entregador/features/endereco/domain/repositories/endereco_repository.dart';

class GetAllEnderecosUseCase {
  final EnderecoRepository _repository;

  GetAllEnderecosUseCase(this._repository);

  Future<Either<Failure, List<EnderecoEntity>>> call() async {
    return _repository.getAll();
  }
}