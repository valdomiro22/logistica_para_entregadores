import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/repositories/cliente_repository.dart';

class GetAllClientesUseCase {
  final ClienteRepository _repository;

  GetAllClientesUseCase(this._repository);

  Future<Either<Failure, List<ClienteEntity>>> call() async {
    return _repository.getAll();
  }
}
