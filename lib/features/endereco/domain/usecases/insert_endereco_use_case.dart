import 'package:dartz/dartz.dart';
import 'package:logistica_entregador/core/error/failure.dart';
import 'package:logistica_entregador/features/endereco/domain/entities/endereco_entity.dart';
import 'package:logistica_entregador/features/endereco/domain/repositories/endereco_repository.dart';
import 'package:uuid/uuid.dart';

class InsertEnderecoUseCase {
  final EnderecoRepository _repository;

  InsertEnderecoUseCase(this._repository);

  Future<Either<Failure, Unit>> call(InsertEnderecoParams params) async {
    if (params.nome.isEmpty) {
      return Left(ErroInesperadoFailure('Nome do cliente não pode estar vazio'));
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

    final idGerado = Uuid().v4();
    final criadoEm = DateTime.now();

    final endereco = EnderecoEntity(
      nome: params.nome,
      id: idGerado,
      clienteId: params.clienteId,
      rua: params.rua,
      numero: params.numero,
      bairro: params.bairro,
      cidade: params.cidade,
      estado: params.estado,
      cep: params.cep,
      criadoEm: criadoEm,
    );

    return _repository.insert(endereco);
  }
}

class InsertEnderecoParams {
  final String nome;
  final String clienteId;
  final String rua;
  final String numero;
  final String bairro;
  final String cidade;
  final String estado;
  final String cep;

  InsertEnderecoParams({
    required this.nome,
    required this.clienteId,
    required this.rua,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
  });
}
