import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';

import '../../../../core/error/failure.dart';

class GetAllEntregasPorClienteUseCase {
  final EntregaRepository _repository;

  GetAllEntregasPorClienteUseCase(this._repository);

  Future<Either<Failure, List<EntregaEntity>>> call(String clienteId) async {
    return _repository.getAllEmtregasPorPorCliente(clienteId);
  }
}
