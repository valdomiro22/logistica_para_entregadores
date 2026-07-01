import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';
import 'package:logistica_entregador/features/comprovante/domain/repositories/comprovante_repository.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/error/failure.dart';

class InsertComprovanteUseCase {
  final ComprovanteRepository _repository;

  InsertComprovanteUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertComprovanteParams params) async {
    if (params.entregaId.isEmpty) {
      return Left(ErroInesperadoFailure('entregaId não pode estar vazio'));
    }

    if (params.clienteId.isEmpty) {
      return Left(ErroInesperadoFailure('clienteId não pode estar vazio'));
    }

    if (params.foto.isEmpty) {
      return Left(ErroInesperadoFailure('foto não pode esta vazia'));
    }

    if (params.assinatura.isEmpty) {
      return Left(ErroInesperadoFailure('assinatura não pode esta vazia'));
    }

    final idGerado = Uuid().v4();
    final criadoEm = DateTime.now();

    final comprovante = ComprovanteEntity(
      id: idGerado,
      entregaId: params.entregaId,
      clienteId: params.clienteId,
      foto: params.foto,
      assinatura: params.assinatura,
      observacao: params.observacao,
      criadoEm: criadoEm,
    );

    return _repository.insert(comprovante);
  }
}

class InsertComprovanteParams {
  final String entregaId;
  final String clienteId;
  final String foto;
  final String assinatura;
  final String? observacao;

  InsertComprovanteParams({
    required this.entregaId,
    required this.clienteId,
    required this.foto,
    required this.assinatura,
    this.observacao,
  });
}
