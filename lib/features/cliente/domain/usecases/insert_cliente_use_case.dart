import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/cliente/domain/entities/cliente_entity.dart';
import 'package:logistica_entregador/features/cliente/domain/repositories/cliente_repository.dart';
import 'package:uuid/uuid.dart';

class InsertClienteUseCase {
  final ClienteRepository _repository;

  InsertClienteUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertClienteParams params) async {
    if (params.nome.isEmpty) return Left(ErroInesperadoFailure('Nome não pode estar vazio'));
    if (params.telefone.isEmpty) {
      return Left(ErroInesperadoFailure('Telefone não pode estar vazio'));
    }
    if (params.email.isEmpty) return Left(ErroInesperadoFailure('E-mail não pode estar vazio'));

    final idGerado = Uuid().v4();
    final criadoEm = DateTime.now();

    final cliente = ClienteEntity(
      id: idGerado,
      nome: params.nome,
      telefone: params.telefone,
      email: params.email,
      observacao: params.observacao,
      criadoEm: criadoEm,
    );

    return _repository.insert(cliente);
  }
}

class InsertClienteParams {
  final String nome;
  final String telefone;
  final String email;
  final String? observacao;

  InsertClienteParams({
    required this.nome,
    required this.telefone,
    required this.email,
    this.observacao,
  });
}
