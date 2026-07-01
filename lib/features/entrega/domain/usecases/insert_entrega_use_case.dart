import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/entrega_entity.dart';
import 'package:logistica_entregador/features/entrega/domain/repositories/entrega_repository.dart';
import 'package:uuid/uuid.dart';

import '../entities/status_entrega.dart';

class InsertEntregaUseCase {
  final EntregaRepository _repository;

  InsertEntregaUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertEntregaParams params) async {
    if (params.clienteId.isEmpty) {
      return Left(ErroInesperadoFailure('clienteId não pode estar vazio'));
    }

    final idGerado = Uuid().v4();
    final criadoEm = DateTime.now();
    final status = StatusEntrega.pendente;

    final entrega = EntregaEntity(
      id: idGerado,
      clienteId: params.clienteId,
      dataEntrega: params.dataEntrega,
      status: status,
      criadoEm: criadoEm,
      observacao: params.observacao,
    );

    return _repository.insert(entrega);
  }
}

class InsertEntregaParams {
  String clienteId;
  DateTime dataEntrega;
  String? observacao;

  InsertEntregaParams({
    required this.clienteId,
    required this.dataEntrega,
    this.observacao,
  });
}
