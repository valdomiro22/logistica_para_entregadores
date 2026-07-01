import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/repositories/cliente_repository.dart';

class UpdateClienteUseCase {
  final ClienteRepository _repository;

  UpdateClienteUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateClienteParams params) async {
    if (params.id.isEmpty) return Left(ErroInesperadoFailure('ID não pode estar vazio'));
    if (params.nome.isEmpty) return Left(ErroInesperadoFailure('Nome não pode estar vazio'));
    if (params.email.isEmpty) return Left(ErroInesperadoFailure('E-mail não pode estar vazio'));
    if (params.telefone.isEmpty) {
      return Left(ErroInesperadoFailure('Telefone não pode estar vazio'));
    }

    final editadoEm = DateTime.now();

    final cliente = ClienteEntity(
      id: params.id,
      nome: params.nome,
      telefone: params.telefone,
      email: params.email,
      criadoEm: params.criadoEm,
      editadoEm: editadoEm,
    );

    return _repository.update(cliente);
  }
}

class UpdateClienteParams {
  final String id;
  final String nome;
  final String telefone;
  final String email;
  final String? observacao;
  final DateTime criadoEm;

  UpdateClienteParams({
    required this.id,
    required this.nome,
    required this.telefone,
    required this.email,
    this.observacao,
    required this.criadoEm,
  });
}
