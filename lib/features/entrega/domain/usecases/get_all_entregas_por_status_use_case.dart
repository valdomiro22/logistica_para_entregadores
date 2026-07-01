import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/status_entrega.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';

import '../../../../core/error/failure.dart';

class GetAllEntregasPorStatusUseCase {
  final EntregaRepository _repository;

  GetAllEntregasPorStatusUseCase(this._repository);

  Future<Either<Failure, List<EntregaEntity>>> call(StatusEntrega status) async {
    final statusString = status.text;
    return _repository.getAllEmtregasPorStatus(statusString);
  }
}
