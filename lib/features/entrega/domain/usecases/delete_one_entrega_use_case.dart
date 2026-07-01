import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';

import '../../../../core/error/failure.dart';

class DeleteOneEntregaUseCase {
  final EntregaRepository _repository;

  DeleteOneEntregaUseCase(this._repository);

  Future<Either<Failure, Unit>> call(EntregaEntity entrega) async {
    return _repository.delete(entrega);
  }
}
