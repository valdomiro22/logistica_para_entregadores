import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/endereco/domain/repositories/endereco_repository.dart';

import '../entities/endereco_entity.dart';

class UpdateEnderecoUseCase {
  final EnderecoRepository _repository;

  UpdateEnderecoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(UpdateEnderecoParams params) async {
    if (params.id.isEmpty) {
      return Left(ErroInesperadoFailure('ID não pode estar vazio'));
    }
    if (params.nome.isEmpty) {
      return Left(ErroInesperadoFailure('Nome não pode estar vazio'));
    }
    if (params.clienteId.isEmpty) {
      return Left(ErroInesperadoFailure('ID do cliente não pode estar vazio'));
    }
    if (params.rua.isEmpty) {
      return Left(ErroInesperadoFailure('Rua não pode estar vazia'));
    }
    if (params.numero.isEmpty) {
      return Left(ErroInesperadoFailure('Número não pode estar vazia'));
    }
    if (params.bairro.isEmpty) {
      return Left(ErroInesperadoFailure('Bairro não pode estar vazia'));
    }
    if (params.cidade.isEmpty) {
      return Left(ErroInesperadoFailure('Cidade não pode estar vazia'));
    }
    if (params.estado.isEmpty) {
      return Left(ErroInesperadoFailure('Estado não pode estar vazia'));
    }
    if (params.cep.isEmpty) {
      return Left(ErroInesperadoFailure('CEP não pode estar vazia'));
    }

    final editadoEm = DateTime.now();

    final endereco = EnderecoEntity(
      nome: params.nome,
      id: params.id,
      clienteId: params.clienteId,
      rua: params.rua,
      numero: params.numero,
      bairro: params.bairro,
      cidade: params.cidade,
      estado: params.estado,
      cep: params.cep,
      criadoEm: params.criadoEm,
      editadoEm: editadoEm,
    );

    return _repository.update(endereco);
  }
}

class UpdateEnderecoParams {
  final String id;
  final String nome;
  final String clienteId;
  final String rua;
  final String numero;
  final String bairro;
  final String cidade;
  final String estado;
  final String cep;
  final DateTime criadoEm;

  UpdateEnderecoParams({
    required this.id,
    required this.nome,
    required this.clienteId,
    required this.rua,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
    required this.criadoEm,
  });
}
