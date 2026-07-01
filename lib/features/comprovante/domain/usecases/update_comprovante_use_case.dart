import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/features/comprovante/domain/entities/comprovante_entity.dart';
import 'package:logistica_entregador/features/comprovante/domain/repositories/comprovante_repository.dart';

import '../../../../core/error/failure.dart';

class UpdateComprovanteUseCase {
  final ComprovanteRepository _repository;

  UpdateComprovanteUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateComprovanteParams params) async {
    if (params.id.isEmpty) {
      return Left(ErroInesperadoFailure('ID não pode estar vazio'));
    }

    if (params.entregaId.isEmpty) {
      return Left(ErroInesperadoFailure('ENTREGA_ID não pode estar vazio'));
    }

    if (params.entregaId.isEmpty) {
      return Left(ErroInesperadoFailure('CLIENTE_ID não pode estar vazio'));
    }

    if (params.foto.isEmpty) {
      return Left(ErroInesperadoFailure('FOTO não pode estar vazio'));
    }

    if (params.assinatura.isEmpty) {
      return Left(ErroInesperadoFailure('ASSINATURA pode estar vazio'));
    }

    final editadoEm = DateTime.now();

    final comprovante = ComprovanteEntity(
      id: params.id,
      entregaId: params.entregaId,
      clienteId: params.clienteId,
      foto: params.foto,
      assinatura: params.assinatura,
      criadoEm: params.criadoEm,
      observacao: params.observacao,
      editadoEm: editadoEm,
    );

    return _repository.update(comprovante);
  }
}

class UpdateComprovanteParams {
  final String id;
  final String entregaId;
  final String clienteId;
  final String foto;
  final String assinatura;
  final String? observacao;
  final DateTime criadoEm;

  UpdateComprovanteParams({
    required this.entregaId,
    required this.clienteId,
    required this.id,
    required this.foto,
    required this.assinatura,
    this.observacao,
    required this.criadoEm,
  });
}
