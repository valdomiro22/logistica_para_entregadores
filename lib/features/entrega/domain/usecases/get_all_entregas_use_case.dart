import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';

import '../../../../core/error/failure.dart';

class GetAllEntregasUseCase {
  final EntregaRepository _repository;

  GetAllEntregasUseCase(this._repository);

  Future<Either<Failure, List<EntregaEntity>>> call() async {
    return _repository.getAll();
  }
}
