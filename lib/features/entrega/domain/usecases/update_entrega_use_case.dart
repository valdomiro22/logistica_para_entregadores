import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';

import '../../../../core/error/failure.dart';
import '../entities/status_entrega.dart';

class UpdateEntregaUseCase {
  final EntregaRepository _repository;

  UpdateEntregaUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateEntregaParams params) async {
    if (params.id.isEmpty) {
      return Left(ErroInesperadoFailure('Id não pode estar vazio'));
    }
    if (params.clienteId.isEmpty) {
      return Left(ErroInesperadoFailure('clienteId não pode estar vazio'));
    }

    final editadoEm = DateTime.now();

    final entrega = EntregaEntity(
      id: params.id,
      clienteId: params.clienteId,
      dataEntrega: params.dataEntrega,
      status: params.status,
      criadoEm: params.criadoEm,
      observacao: params.observacao,
      concluidoEm: params.concluidoEm,
      editadoEm: editadoEm,
    );

    return _repository.update(entrega);
  }
}

class UpdateEntregaParams {
  final String id;
  final String clienteId;
  final DateTime dataEntrega;
  final StatusEntrega status;
  final String? observacao;
  final DateTime criadoEm;
  final DateTime? concluidoEm;

  UpdateEntregaParams({
    required this.id,
    required this.clienteId,
    required this.dataEntrega,
    required this.status,
    this.observacao,
    required this.criadoEm,
    this.concluidoEm,
  });
}
